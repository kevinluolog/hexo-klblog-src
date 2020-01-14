---
title: make
tag: 
- 自动生成
- 笔记
categories:
- 001install
toc: TRUE
---
<h1 id="make">make</h1>
<h2 id="make-and-makefile">make and makefile</h2>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h3 id="make-1">make</h3>
<h4 id="gnu-make-安装">gnu make 安装</h4>
<ul>
<li><p>make 官方下载地址</p>
<p>GNU ftp server: <a href="http://ftp.gnu.org/gnu/make/">http://ftp.gnu.org/gnu/make/</a> (via HTTP) and <a href="ftp://ftp.gnu.org/gnu/make/">ftp://ftp.gnu.org/gnu/make/</a> (via FTP)</p></li>
<li><p>make4.2（GNU make）的安装步骤</p>
<ol type="1">
<li><p>解压</p>
<p><code>tar -zxvf make4.2.tar.gz</code></p></li>
<li><p>安装</p>
<p>window: 要用到gcc of MinGW,或者visual studio.</p>
<pre><code>E:\E-ProgramFiles\portable\codeblocks-mingw\MinGW\mingwvars.bat
cd make4.2
build_w32.bat gcc</code></pre>
<p>在 <code>\make-4.2\GccRel</code> 下生成gnumake.exe</p>
<p>Linux</p>
<pre><code>cd make4.2
./configure
make &amp;&amp; make install</code></pre></li>
<li><p>打开新的窗口，验证</p>
<p><code>make -v</code> 或 <code>gnumake -v</code></p></li>
</ol></li>
</ul>
<h4 id="help">help</h4>
<h5 id="gnu官方">GNU官方</h5>
<p><a href="http://www.gnu.org/software/make/manual/">gnu make manual</a></p>
<p><a href="http://www.gnu.org/software/make/manual/html_node/Wildcard-Function.html#Wildcard-Function">gnu make Wildcard-Function</a></p>
<p><a href="http://www.gnu.org/software/make/manual/html_node/Concept-Index.html#Concept-Index_cp_letter-W">gnu make index</a></p>
<h5 id="gnu其它">gnu其它</h5>
<p>这篇文章写得短小全面。 外链-&gt; <a href="https://blog.csdn.net/qq_30650153/article/details/83384248">gcc与makefile</a></p>
<h4 id="make-misc">make misc</h4>
<h3 id="cmake">cmake</h3>
<h4 id="cmake-install">cmake install</h4>
<p><a href="https://cmake.org/download/">cmake download</a></p>
<h4 id="cmake-help">cmake help</h4>
<p><a href="https://cmake.org/documentation/">cmake documments</a></p>
<p><a href="https://cmake.org/cmake-tutorial/">cmake tutorial</a></p>
<p><a href="https://cmake.org/cmake/help/v3.15/">cmake help v3.15</a></p>
<h3 id="faq">FAQ</h3>
<h4 id="makefile变量代表的意义">Makefile变量$@，$^，$&lt;代表的意义</h4>
<p><a href="https://www.cnblogs.com/baiduboy/p/6849587.html">makefile中$@ $^ %&lt;使用</a></p>
<p>$@目标文件，$^所有的依赖文件，$&lt;第一个依赖文件。</p>
<p>这是再一次简化后的Makefile</p>
<pre><code>main：main.o mytool1.o mytool2.o
gcc -o $@ $^
.c.o：
gcc -c $&lt;</code></pre>
<h4 id="怎么查到函数是哪个库的">怎么查到函数是哪个库的？</h4>
<p>有时候我们使用了某个函数，但是我们不知道库的名字，这个时候怎么办呢?</p>
<p>比如我要找sin这个函数所在的库。 就只好用命令</p>
<pre><code>nm -o /lib/\*.so|grep sin&gt;~/sin</code></pre>
<p>然后看~/sin文件，会找到这样的一行</p>
<pre><code>libm-2.1.2.so：00009fa0 W sin </code></pre>
<p>这样我就知道了sin在 libm-2.1.2.so库里面， -lm选项就可以了(去掉前面的lib和后面的版本标志，就剩下m了所以是 -lm)。</p>
<pre><code>gcc -o temp temp.c -lm</code></pre>
<h4 id="只知道函数的大概形式怎么找到头文件用man">只知道函数的大概形式，怎么找到头文件。用man</h4>
<p>想知道fread这个函数的确切形式，我们只要执行 man fread 系统就会输出着函数的详细解释的。和这个函数所在的头文件说明了。</p>
<p>如果我们要write这个函数的说明，当我们执行 <span class="title-ref">man write</span> 时，输出的结果却不是我们所需要的。 因为我们要的是write这个函数的说明，可是出来的却是write这个命令的说明。 为了得到write的函数说明我们要用 <span class="title-ref">man 2 write</span> 2表示我们用的write这个函数是系统调用函数，还有一个我们常用的是3表示函数是C的库函数。</p>
<h3 id="引用文章全文">引用文章全文</h3>
<h4 id="gcc与makefile">gcc与makefile</h4>
<div class="line-block">本文不会详细展开如何编写一个Makefile。如想了解种种细节，请参考下面这个非常详细的教程，包含几乎GNU make的Makefile的所有细节：</div>
<p><a href="https://seisman.github.io/how-to-write-makefile/">跟我一起写Makefile</a></p>
<p>而本文包含以下内容：</p>
<ul>
<li>makefile小模板</li>
<li>gcc指令</li>
</ul>
<p>Makefile小模板</p>
<p>适用于纯 Ｃ 语言</p>
<pre><code># 指令编译器和选项
CC=gcc
CFLAGS=-Wall -std=gnu99

# 目标文件
TARGET=main
SRCS = main1.c \
            main2.c  \
            main3.c  
INC = -I./
OBJS = $(SRCS:.c=.o)

$(TARGET):$(OBJS)
    $(CC) -o $@ $^

clean:
    rm -rf $(TARGET) $(OBJS)

%.o:%.c
    $(CC) $(CFLAGS) $(INC) -o $@ -c $&lt;</code></pre>
<div class="line-block">注意：Makefile有个规则就是命令行是以tab键开头，4个空格或其他则会报错：<br />
<code>Makefile:2: *** missing separator。stop</code></div>
<ul>
<li>相比于单个文件和多个文件的makefile，通过变量<code>INC</code>制定了头文件路径。头文件路径之间通过空格隔开。</li>
<li>编译规则<code>%.o:%.c</code>中加入了头文件参数<code>$(CC) $(CFLAGS) $(INC) -o $@ -c $&lt;</code>，</li>
<li>单个文件和多个文件的makefile相比增加了头文件路径参数。</li>
<li><code>SRCS</code>变量中，文件较多时可通过<code>“\”</code>符号续行。</li>
<li><code>$@</code> --代表目标文件</li>
<li><code>$^</code> --代表所有的依赖文件</li>
<li><code>$&lt;</code> --代表第一个依赖文件(最左边的那个)。</li>
</ul>
<p>适用于 C/C++ 混合编译</p>
<p>目录结构如下：</p>
<pre><code>httpserver
│   main.cpp
│   Makefile  
└─────inc
│      │   mongoose.h
│      │   http_server.h
│   
──────src
│       │   http_server.cpp
│       │   mongoose.c
│       │   ...</code></pre>
<p>Makefile 如下：</p>
<pre><code>CC=gcc
CXX=g++

# 编译器在编译时的参数设置,包含头文件路径设置
CFLAGS:=-Wall -O2 -g 
CFLAGS+=-I $(shell pwd)/inc
CXXFLAGS:=-Wall -O2 -g -std=c++11
CXXFLAGS+=-I $(shell pwd)/inc

# 库文件添加
LDFLAGS:=
LDFLAGS+=

# 指定源程序存放位置
SRCDIRS:=.
SRCDIRS+=src

# 设置程序中使用文件类型
SRCEXTS:=.c .cpp

# 设置运行程序名
PROGRAM:=httpserver

SOURCES=$(foreach d,$(SRCDIRS),$(wildcard $(addprefix $(d)/*,$(SRCEXTS))))
OBJS=$(foreach x,$(SRCEXTS),$(patsubst %$(x),%.o,$(filter %$(x),$(SOURCES))))

.PHONY: all clean distclean install

%.o: %.c
    $(CC) -c $(CFLAGS) -o $@ $&lt;

%.o: %.cxx
    $(CXX) -c $(CXXFLAGS) -o $@ $&lt;


$(PROGRAM): $(OBJS)
ifeq ($(strip $(SRCEXTS)),.c)
    $(CC) -o $(PROGRAM) $(OBJS) $(LDFLAGS)
else
    $(CXX) -o $(PROGRAM) $(OBJS) $(LDFLAGS)
endif


install:
    install -m 755 -D -p $(PROGRAM) ./bin

clean:
    rm -f $(shell find -name &quot;*.o&quot;)
    rm -f $(PROGRAM)

distclean:
    rm -f $(shell find -name &quot;*.o&quot;)
    rm -f $(shell find -name &quot;*.d&quot;)
    rm -f $(PROGRAM)

all:
    @echo $(OBJS)</code></pre>
<p><strong>gcc指令</strong></p>
<p><strong>一步到位</strong></p>
<p><code>gcc main.c -o main</code></p>
<p><strong>多个程序文件的编译</strong></p>
<p><code>gcc main1.c main2.c -o main</code></p>
<p><strong>预处理</strong></p>
<div class="line-block"><code>gcc -E main.c -o main.i</code><br />
或<br />
<code>gcc -E main.c</code><br />
gcc的-E选项，可以让编译器在预处理后停止，并输出预处理结果。</div>
<p><strong>编译为汇编代码</strong></p>
<div class="line-block">预处理之后，可直接对生成的test.i文件编译，生成汇编代码:<br />
<code>gcc -S main.i -o main.s</code><br />
gcc的-S选项，表示在程序编译期间，在生成汇编代码后，停止，-o输出汇编代码文件。</div>
<p><strong>汇编</strong></p>
<div class="line-block">对于上文中生成的汇编代码文件test.s，gas汇编器负责将其编译为目标文件，如下:<br />
<code>gcc -c main.s -o main.o</code></div>
<p><strong>连接</strong></p>
<div class="line-block">gcc连接器是gas提供的，负责将程序的目标文件与所需的所有附加的目标文件连接起来，最终生成可执行文件。附加的目标文件包括静态连接库和动态连接库。<br />
对于上一小节中生成的main.o，将其与Ｃ标准输入输出库进行连接，最终生成可执行程序main。</div>
<p><strong>检错</strong></p>
<div class="line-block">参数<code>-Wall</code>，使用它能够使GCC产生尽可能多的警告信息。<br />
<code>gcc -Wall main.c -o main</code><br />
在编译程序时带上<code>-Werror</code>选项，那么GCC会在所有产生警告的地方停止编译，迫使程序员对自己的代码进行修改，如下：<br />
<code>gcc -Werrormain.c -o main</code></div>
<p><strong>创建动态链接库</strong></p>
<div class="line-block">生成生成o文件<br />
<code>gcc -c -fPIC add.c</code> //这里一定要加上-fPIC选项，目的使库不必关心文件内函数位置<br />
再编译<br />
<code>gcc -shared -fPIC -o libadd.so add.o</code></div>
<p><strong>库文件连接</strong></p>
<div class="line-block">开发软件时，完全不使用第三方函数库的情况是比较少见的，通常来讲都需要借助许多函数库的支持才能够完成相应的功能。从程序员的角度看，函数库实际上就是一些头文件（<code>.h</code>）和库文件（<code>so、或lib、dll</code>）的集合。虽然<code>Linux</code>下的大多数函数都默认将头文件放到<code>/usr/include/</code>目录下，而库文件则放到<code>/usr/lib/</code>目录下；但也有的时候，我们要用的库不在这些目录下，所以GCC在编译时必须用自己的办法来查找所需要的头文件和库文件。<br />
额外补充：Linux需要连接so库文件（带软连接），可以完完整整的复制到<code>/usr/include/</code>或<code>/usr/lib/</code>目录下，使用 <code>cp -d * /usr/lib/</code> 命令，然后别忘记再运行 <code>ldconfig</code>。</div>
<div class="line-block">其中inclulde文件夹的路径是<code>/home/test/include</code>,lib文件夹是<code>/home/test/lib</code>,lib文件夹中里面包含二进制so文件<code>libtest.so</code><br />
首先要进行编译main.c为目标文件，这个时候需要执行:<br />
<code>gcc –c –I /home/test/include main.c –o main.o</code><br />
最后把所有目标文件链接成可执行文件:<br />
<code>gcc –L /home/test/lib -ltest main.o –o main</code></div>
<div class="line-block">默认情况下， GCC在链接时优先使用动态链接库，只有当动态链接库不存在时才考虑使用静态链接库，如果需要的话可以在编译时加上-static选项，强制使用静态链接库。<br />
<code>gcc –L /home/test/lib -static -ltest main.o –o main</code></div>
<p>静态库链接时搜索路径顺序：</p>
<ol>
<li><code>ld</code>会去找GCC命令中的参数-L</li>
<li>再找gcc的环境变量<code>LIBRARY_PATH</code></li>
<li>再找内定目录 <code>/lib</code>、 <code>/usr/lib</code>、 <code>/usr/local/lib</code> 这是当初compile gcc时写在程序内的</li>
</ol>
<p>动态链接时、执行时搜索路径顺序:</p>
<ol>
<li>编译目标代码时指定的动态库搜索路径</li>
<li>环境变量<code>LD_LIBRARY_PATH</code>指定的动态库搜索路径</li>
<li>配置文件<code>/etc/ld.so.conf</code>中指定的动态库搜索路径</li>
<li>默认的动态库搜索路径<code>/lib</code></li>
<li>默认的动态库搜索路径<code>/usr/lib</code></li>
</ol>
<div class="line-block">相关环境变量：<br />
<code>LIBRARY_PATH</code>环境变量：指定程序静态链接库文件搜索路径<br />
<code>LD_LIBRARY_PATH</code>环境变量：指定程序动态链接库文件搜索路径</div>
<h3 id="实践中的一些经验">实践中的一些经验</h3>
<h4 id="eval-和-define-中变量展开的坑">eval 和 define 中变量展开的坑</h4>
<p>先上参考代码，下面代码中的错误，让我一阵好找，费几天时间。 出现莫名其妙的错误，DIR_STEM 缺尾部的, TBFILENAME引用不到，文件名中间被插入空格等等。原因都是行尾的引起。</p>
<pre><code>define PROGRAM_template
#把文件分成4部分,基-干(DIR_STEM)-文件名.后缀名
DIR_STEM := $(subst $(DIR_BASE_OBJ),,$(dir $(1)))#XXX:这句语句执行完后展开后，行尾有\,会被视为连上下一行，导致下一行变量成内容了。后面就找不到这个变量了。所以用DIR_STEM := $(subst $(DIR_BASE_OBJ),,$(basename $(1)))代替，就不会有\了
TBFILENAME := $(subst .md,,$(notdir $(1)))#XXX:此处因上面问题会连到上行
$(info $(TBFILENAME))#XXX:此处会显示不出东西来
#$(1): $(DIR_BASE_SRC)$$(DIR_STEM)\$$(TBFILENAME).rst
#$(1): $(DIR_BASE_SRC)$(subst $(DIR_BASE_OBJ),,$(dir $(1)))\$(subst .md,,$(notdir $(1))).rst
#$(1): $(DIR_BASE_SRC)$$(DIR_STEM)$$(TBFILENAME).rst
#dep := $(DIR_BASE_SRC)$$(DIR_STEM)\$$(TBFILENAME).rst
#dep := $(patsubst %.md,%.rst,$(subst $(DIR_BASE_OBJ),$(DIR_BASE_SRC),$(1)))
dep := $(patsubst %.md,%.rst,$(subst $(DIR_BASE_OBJ),$(DIR_BASE_SRC),$(1)))
##不能直接写在[目标:依赖]里面,因为依赖里面带着模式匹配,有可能会使文件名乱套,未做实验再次证实，如果有问题，可以参考。最后发现没关系的。
#$(1): $(patsubst %.md,%.rst,$(subst $(DIR_BASE_OBJ),$(DIR_BASE_SRC),$(1)))
$(1): $$(dep)
##必须要写成$$(dep),$(dep)会使pandoc第一个参数为空。大概是因为命令集内部定义或组合生成的新变量要加双$
 $(info $(1): $(dep))
 pandoc $$&lt; -o $$@
 $$(file &gt;$(DIR_BASE_OBJ)-$$(DIR_STEM)-$$(TBFILENAME).tmp,$$(call def_hexo_md_head,$$TBFILENAME))
## 上面命令pandoc此处必须加$$,要不$&lt;,$@会找不到,会出现pandoc -o 这样没有任何的参数带入的错误。花了我几天时间查了无数资料，做无数次的试验，才找到这个问题
endef
## 写入文件的函数 $(file &gt;xxx.xx,$(xxx)),这里要用$$(file， $$(call ，如果没有则在eval 的第一次展开时，函数就会被执行，所以会每次执行make都会写文件，而不是设计的源文件有更新时才编译更新文件。

# 打散目标集合,一个一个送入命令集重组,同时用eval命令在makefile中使能。这样可以克服模式匹配依赖要一致的缺点(%只能匹配文件名,并且要规则一样)
$(foreach temp,$(OBJ_PATH_MDS),$(eval $(call PROGRAM_template,$(temp))))</code></pre>
<p>改好好用的代码</p>
<pre><code>$(OBJ_PATH_DIR):
#因为mkdir支持多目录同时写在一起,所以不用再用模式来拆开成一个一个了。
 @echo &quot;   MKDIR $@...&quot; 
 @mkdir $@ 

##定义一个命令包, 来重新组合【目标:依赖】关系, 配合$(eval ) 和foreach 来使用。eval用来二次展开命令包，使用真正成为makefile的一部分，命令包只是一堆makefile标识文本。foreach用来展开目标集的每一个目标，并送入命令包进行替换重组。
##此处要注意的是，二次展开才用到的变量或函数要用$$,譬如自动变量$@等。
##define a function
#$(info $(TBFILENAME))

define PROGRAM_template
DIR_STEM := $(subst $(DIR_BASE_OBJ),,$(basename $(1)))
#TBFILENAME := $(subst .md,,$(notdir $(1)))
#$(1): $(DIR_BASE_SRC)$$(DIR_STEM).rst
#dep := $(patsubst %.md,%.rst,$(subst $(DIR_BASE_OBJ),$(DIR_BASE_SRC),$(1)))
dep := $(basename $(subst $(DIR_BASE_OBJ),$(DIR_BASE_SRC),$(1))).rst
$(1): $$(dep)
 @echo start hexo head output...
 $$(file &gt;$$@.tmp,$$(call def_hexo_md_head,$(subst .md,,$(notdir $(1)))))
#  @echo $$(TBFILENAME)+2
#  @echo $(subst .md,,$(notdir $(1)))+1#直接函数填入才能取到。
 @echo convert to utf8
 iconv -f GBK -t UTF-8 $$@.tmp &gt;$$@
 @echo start pandoc ...
 pandoc $$&lt; -o - &gt;&gt;$$@
 @echo delete .tmp file...
 del $$@.tmp
 @echo copy .md file to hexo post...
 xcopy $$@ $(dir $(subst $(DIR_BASE_OBJ),$(DIR_BASE_HEXO_POST),$(1))) /y
endef

# 打散目标集合,一个一个送入命令集重组,同时用eval命令在makefile中使能。这样可以克服模式匹配依赖要一致的缺点(%只能匹配文件名,并且要规则一样)
$(foreach temp,$(OBJ_PATH_MDS),$(eval $(call PROGRAM_template,$(temp))))</code></pre>
<ul>
<li><p>行尾有,后一行的变量名被连上来了</p>
<pre><code>define function
DIR_STEM := $(dir $(1))#这个不是出现在define中是没有关系的。但此处就有可能有问题
endef</code></pre>
<p>或者</p>
<pre><code>DIR_STEM := c:\tmp\</code></pre></li>
<li><p>eval和define</p>
<p>define只是一堆文字，在引用的地方展开，但是并不作为makefile的一部分，即展开的变量不会出现在makefile变量空间中，1tab缩进的命令会在展开时执行。</p>
<p>eval则表示会有2次展开，第一次展开和define一样。第二次展开是把展开的内容变为makefile变量等空间的一部分，可以真正引用到。</p>
<p>eval 2次展开才引用到的变量要用$$, 自动变量也一样，新生成变量也一样，define中创建的变量也一样，eval外面已经有的变量不用加双$，案例参考上面代码。 函数也一样，如果是要在2次展开时，才启动执行的话，就需要加$$延迟defer</p></li>
</ul>
<h4 id="输出文件的方法">输出文件的方法</h4>
<ul>
<li>$(file &gt;$$@.tmp,$$(call def_hexo_md_head,$$(TBFILENAME)))</li>
<li>&gt; 和 &gt;&gt; 法</li>
</ul>
<h4 id="一些工具">一些工具</h4>
<ul>
<li><p>iconv 文件编码转换</p>
<p>因pandoc和Hexo都只支持UTF-8的编码形式，而中文版windows缺省输出的是GBK的中文编码，如果直接用&gt;&gt;把pandoc的输出重定向到GBK编码的文件中时，会出现什么也没有输出的现象。这里就需要iconv来做一下转换了。</p>
<pre><code>echo start hexo head output...
$$(file &gt;$$@.tmp,$$(call def_hexo_md_head,$$(TBFILENAME)))
echo convert to utf8
iconv -f GBK -t UTF-8 $$@.tmp &gt;$$@
echo start pandoc ...
pandoc $$&lt; -o - &gt;&gt;$$@</code></pre></li>
</ul>
<h4 id="调试输出变量信息方式">调试输出变量信息方式</h4>
<ul>
<li><p>输出信息方式为：</p>
<pre><code>$(warning xxx)
$(error xxx)
$(info xxx)</code></pre></li>
<li><p>输出变量方式为：</p>
<pre><code>$(info $(dir $(1)))
$(warning  $(XXX))</code></pre></li>
</ul>
<h4 id="echo输出信息时加上会使变量显示有问题不对并且会报错">echo输出信息时加上""会使变量显示有问题，不对并且会报错</h4>
<pre><code>SRC_PATHDIRNAMES := $(shell dir $(DIR_BASE_SRC) /ad-h-s /b /w /s)
SRC_PATHDIRNAMES_GITKEEPER := $(addsuffix \.gitkeeper,$(SRC_PATHDIRNAMES))
$(info $(SRC_PATHDIRNAMES_GITKEEPER))
@echo &quot;$(SRC_PATHDIRNAMES_GITKEEPER)&quot;</code></pre>
<p>这么一段简单的代码，居然执行的时候会死机，或者报错，$info显示完全正确。 原因是echo后面 把“”去掉就好了。</p>
<h4 id="pattern-make-模式匹配的限制">pattern % make 模式匹配的限制</h4>
<pre><code>SRC_PATHDIRNAMES := $(filter-out $(DIR_BASE_SRC)\.git%,$(SRC_PATHDIRNAMES_FILTER_BEFORE))$(info $(SRC_PATHDIRNAMES))</code></pre>
<p>此处的模式匹配，%只能用在中间，不能%.git%这种匹配。 匹配不出来。</p>
