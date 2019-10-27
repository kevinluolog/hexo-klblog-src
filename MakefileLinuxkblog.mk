#linux专用
script:
  - git ls-files -z --eol | sed -e "s/i\/lf *w\/crlf *attr\/ */\n/g" | while read filename; do echo "$filename"; done
  - git ls-files -z --eol | sed -e "s/i\/lf/ */\n/g" | while read filename; do echo "$filename"; done
  - git ls-files -z --eol
  - git log -1 --date=iso --format="%ad" -- $TRAVIS_BUILD_DIR/source/_posts/kl_notes/002memo/002plan/readyToDo.md
  - git log --date=iso --format="%ad" -- $TRAVIS_BUILD_DIR/source/_posts/kl_notes/002memo/002plan/readyToDo.md

  - pwd
  - echo "+显示首次COMMIT时间：$TRAVIS_BUILD_DIR/source/_posts/kl_notes/002memo"
  - cd $TRAVIS_BUILD_DIR/source/_posts/kl_notes/002memo
  - git ls-files -z --eol
  - git ls-files -z --eol | sed -e "s/i\/lf *w\/crlf *attr\/ */\n/g"

  - git ls-files -z --eol | sed -e "s/i\/lf *w\/crlf *attr\/ */\n/g" | while read filename; do git log --date=iso --format="%ad" -- "$TRAVIS_BUILD_DIR/source/_posts/kl_notes/002memo/$filename" | tail -1; done
  - cd $TRAVIS_BUILD_DIR

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

tv := 0

define PROGRAM_template
#这个touch的机制可以工作，从git log 获得最后一次commit的时间。但是由于push up上去时其实是不带文件时间的。所以没用，要在hexo g，时改动才会在hexo的静态网站中体现出来。
#同时注意在这个地方要用两个$$,函数和变量都是。只用一个会永远是最后一个文件的时间，因为第一次展开就被执行了。
tv =: $tv+1
all_time_$(tv) := $$(shell git log --date=iso --format="%ad" -- "$(1)")
touch_time_$(tv) := $$(shell tail -1 $$(all_time_$(tv)))
$(1): 
	@echo "all_time_$(tv)="
	@echo "$$(all_time_$(tv))"
	@echo "touch_time_$(tv)= $$(touch_time_$(tv))"
#	touch --date="" -m $filename
#	touch --date="$$(touch_time_$(tv))" -m $$@
	touch --date="$$(touch_time_$(tv))" $$@

	@echo "touch1 ok! $@"
endef

# 打散目标集合,一个一个送入命令集重组,同时用eval命令在makefile中使能。这样可以克服模式匹配依赖要一致的缺点(%只能匹配文件名,并且要规则一样)
$(foreach temp,$(DIR_BASE_SRC),$(eval $(call PROGRAM_template,$(temp))))

###---伪目标
.phony: $(DIR_BASE_SRC) touch1

touch1: $(DIR_BASE_SRC)
	@echo all files is touch back first commit time.


###---help

