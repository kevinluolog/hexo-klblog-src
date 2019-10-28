#linux专用
script:
###---输入变量

# 基目录
DIR_BASE_SRC := ./source/_posts
DIR_BASE_OBJ := 
#DIR_BASE_COPYTO := 
DIR_BASE_COPYTO :=

# 后缀名，文件类型
SUFFIX_FROM := .md
SUFFIX_TO := .phony

###---生成变量

# 获得源$(SUFFIX_FROM)路径名。
# 利用find命令取得目录名
SRC_PATH_DIR := $(shell find $(DIR_BASE_SRC) -type d)

# 取得源文件名,包括路径
# $(wildcard $(dir)/*.xxx) 的返回，已经包含了目录，所以不用再addprefix加上目录名，要不重复了。
SRC_PATH_FILES := $(foreach dir,$(SRC_PATH_DIR),$(wildcard $(dir)/*$(SUFFIX_FROM)))

#得到临时目标，以先walkaround issue of, 直接以已存在的文件做目标，即使用.phony声明，仍然不会执行下面的命令，现在不知道是什么原因。
OBJ_PATH_FILES := $(subst $(SUFFIX_FROM),$(SUFFIX_TO),$(SRC_PATH_FILES))

###---生成目标

define PROGRAM_template
#$$(info $$(touch_time_$(1)))
#$$(info $$(all_time_$(1)))
#$$(info $(1))

#得到临时目标，以先walkaround issue of, 直接以已存在的文件做目标，即使用.phony声明，仍然不会执行下面的命令，现在不知道是什么原因。
TARGET_PHONY_FILE := $(subst $(SUFFIX_FROM),$(SUFFIX_TO),$(1))
#用各个文件名加入名字，并以.time结尾，保存输出commit时间文件，以让在recipe中照样可以取到
TMP_TIME_FILE_$(1) := $(subst $(SUFFIX_FROM),.time,$(1))
all_time_$(1) := $$(shell git log --date=iso --format="%ad" -- "$(1)")
#shell命令已重定向输出到文件，所以变量中没有值
out_all_time_$(1) := $$(shell git log --date=iso --format="%ad" -- "$(1)" >$$(TMP_TIME_FILE_$(1)))
#tail命令之后一定要跟文件，不能变量值。要不报错。
touch_time_$(1) := $$(shell tail -1 $$(TMP_TIME_FILE_$(1)))

$$(TARGET_PHONY_FILE):
	@echo "all_time_$(1)=$$(all_time_$(1))"
	@echo "touch_time_$(1)=$$(touch_time_$(1))"
#	@echo "cat $$(TMP_TIME_FILE_$(1))"
#	echo "$$(shell cat $$(TMP_TIME_FILE_$(1)))"
	touch --date="$$(touch_time_$(1))" -m $(1)
	@echo "touch1 ok! $$@ with $$(touch_time_$(1))"
endef

# 打散目标集合,一个一个送入命令集重组,同时用eval命令在makefile中使能。这样可以克服模式匹配依赖要一致的缺点(%只能匹配文件名,并且要规则一样)
$(foreach temp,$(SRC_PATH_FILES),$(eval $(call PROGRAM_template,$(temp))))

###---伪目标
.phony: touch1

touch1: $(OBJ_PATH_FILES)
	echo $@
	@echo all files is touch back first commit time.
	@echo $(DIR_BASE_SRC)
	@echo $(SRC_PATH_FILES)

###---help

