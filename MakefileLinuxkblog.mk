#linux专用
script:
###---输入变量

# 基目录
DIR_BASE_SRC := ./source/_posts
DIR_BASE_OBJ := 
#DIR_BASE_COPYTO := 
DIR_BASE_COPYTO :=

###---生成变量

# 获得源$(SUFFIX_FROM)路径名。
# 利用find命令取得目录名
SRC_PATH_DIR := $(shell find $(DIR_BASE_SRC) -type d)

# 取得源文件名,包括路径
# $(wildcard $(dir)/*.xxx) 的返回，已经包含了目录，所以不用再addprefix加上目录名，要不重复了。
SRC_PATH_FILES := $(foreach dir,$(SRC_PATH_DIR),$(wildcard $(dir)/*.md))

###---生成目标

define PROGRAM_template
#这个touch的机制可以工作，从git log 获得最后一次commit的时间。但是由于push up上去时其实是不带文件时间的。所以没用，要在hexo g，时改动才会在hexo的静态网站中体现出来。
#同时注意在这个地方要用两个$$,函数和变量都是。只用一个会永远是最后一个文件的时间，因为第一次展开就被执行了。
#all_time_$(1) := $$(shell git log --date=iso --format="%ad" -- "$(1)")
#touch_time_$(1) := $$(shell tail -1 $$(all_time_$(1)))

all_time_$(1) := $$(shell git log -1000 --date=iso --format="%ad" -- "$(1)")
touch_time_$(1) := $$(shell 'git log --date=iso --format="%ad" -- "$(1)" | tail -1') 
$$(info $$(all_time_$(1)))
$$(info $$(touch_time_$(1)))
$$(info $(1))
$(1): 
	@echo "touch1 ok! $$@"
#	@echo "all_time_$(1)="
#	@echo "$$(all_time_$(1))"
#	@echo "touch_time_$(1)= $$(touch_time_$(1))"
##	touch --date="" -m $filename
##	touch --date="$$(touch_time_$(1))" -m $$@
##	touch --date="$$(touch_time_$(1))" $$@
#
#	@echo "touch1 ok! $$@"
endef

# 打散目标集合,一个一个送入命令集重组,同时用eval命令在makefile中使能。这样可以克服模式匹配依赖要一致的缺点(%只能匹配文件名,并且要规则一样)
$(foreach temp,$(SRC_PATH_FILES),$(eval $(call PROGRAM_template,$(temp))))

###---伪目标
.phony: $(SRC_PATH_FILES) touch1

touch1: $(SRC_PATH_FILES)
	@echo all files is touch back first commit time.
	@echo $(DIR_BASE_SRC)
	@echo $(SRC_PATH_FILES)

###---help

