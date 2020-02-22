---
title: makefile
tag: 
- 自动生成
- 001.make
categories:
- 001.make
toc: TRUE
---
<h1 id="makefiles">makefiles</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<p><a href="https://blog.csdn.net/u013896064/article/details/83040906">make之makefile 九 隐含规则</a></p>
<h2 id="案例">案例</h2>
<h3 id="通用makefile自动遍历子目录源文件自动生成依赖">通用makefile,自动遍历子目录源文件，自动生成依赖。</h3>
<p><a href="https://blog.csdn.net/yuliying/article/details/49635485">一份通用makefile,自动遍历子目录源文件，自动生成依赖Ubuntu和OSX</a></p>
<p>这份makefile可以将当前makefile所在文件夹以及所有子文件夹中的cpp文件打包成静态库/动态库/可执行文件. 自动生成所有依赖关系，修改任何文件都可以触发重新编译相应依赖的文件。</p>
<p>在Ubuntu 和 OSX 系统测试通过。</p>
<pre><code>SHELL = /bin/bash

AllDirs := $(shell ls -R | grep &#39;^\./.*:$$&#39; | awk &#39;{gsub(&quot;:&quot;,&quot;&quot;);print}&#39;) .
Sources := $(foreach n,$(AllDirs) , $(wildcard $(n)/*.cpp))
Objs := $(patsubst %.cpp,%.o, $(Sources))
Deps := $(patsubst %.cpp,%.d, $(Sources))
StaticLib := libyy.a
DynamicLib := libyy.so
Bin := yy

#AllLibs : $(DynamicLib)
#AllLibs : $(StaticLib) 
AllLibs : $(Bin)

CC = g++
CXXFLAGS = -g -O2 -fPIC -Wall
CPPFLAGS = $(foreach n,$(AllDirs) , -I$(n))
LDFLAGS = -lstdc++

$(StaticLib) : $(Objs)
    ar rcs $@ $^

$(DynamicLib) : $(Objs)
    g++ -shared -o $@ $^ $(LDFLAGS)

$(Bin) : $(Objs)
    g++ $(Objs) -o $@

%.d : %.cpp
    $(CC) -MT&quot;$(&lt;:.cpp=.o) $@&quot; -MM $(CXXFLAGS) $(CPPFLAGS) $&lt; &gt; $@

sinclude $(Deps)

.PHONY : clean
clean: 
    rm -f $(Objs) $(Deps) $(StaticLib) $(DynamicLib) $(Bin)</code></pre>
<h3 id="makefile操作系统检测方法">makefile操作系统检测方法</h3>
<p>使用两个简单的技巧检测操作系统：</p>
<ol type="1">
<li>首先是环境变量 OS</li>
<li>然后uname命令</li>
</ol>
<pre><code>ifeq ($(OS),Windows_NT)     # is Windows_NT on XP, 2000, 7, Vista, 10...
    detected_OS := Windows
else
    detected_OS := $(shell uname)  # same as &quot;uname -s&quot;
endif</code></pre>
<p>或者更安全的方式，如果不是在Windows上并且uname不可用：</p>
<pre><code>ifeq ($(OS),Windows_NT) 
    detected_OS := Windows
else
    detected_OS := $(shell sh -c &#39;uname 2&gt;/dev/null || echo Unknown&#39;)
endif</code></pre>
<p>如果你想区分Cygwin / MinGW / MSYS / Windows，肯杰克逊提出了一个有趣的选择。看到他的答案看起来像这样：</p>
<pre><code>ifeq &#39;$(findstring ;,$(PATH))&#39; &#39;;&#39;
    detected_OS := Windows
else
    detected_OS := $(shell uname 2&gt;/dev/null || echo Unknown)
    detected_OS := $(patsubst CYGWIN%,Cygwin,$(detected_OS))
    detected_OS := $(patsubst MSYS%,MSYS,$(detected_OS))
    detected_OS := $(patsubst MINGW%,MSYS,$(detected_OS))
endif</code></pre>
<p>然后您可以根据以下内容选择相关内容detected_OS：</p>
<pre><code>ifeq ($(detected_OS),Windows)
    CFLAGS += -D WIN32
endif
ifeq ($(detected_OS),Darwin)        # Mac OS X
    CFLAGS += -D OSX
endif
ifeq ($(detected_OS),Linux)
    CFLAGS   +=   -D LINUX
endif
ifeq ($(detected_OS),GNU)           # Debian GNU Hurd
    CFLAGS   +=   -D GNU_HURD
endif
ifeq ($(detected_OS),GNU/kFreeBSD)  # Debian kFreeBSD
    CFLAGS   +=   -D GNU_kFreeBSD
endif
ifeq ($(detected_OS),FreeBSD)
    CFLAGS   +=   -D FreeBSD
endif
ifeq ($(detected_OS),NetBSD)
    CFLAGS   +=   -D NetBSD
endif
ifeq ($(detected_OS),DragonFly)
    CFLAGS   +=   -D DragonFly
endif
ifeq ($(detected_OS),Haiku)
    CFLAGS   +=   -D Haiku
endif</code></pre>
<p>笔记：</p>
<p>命令uname与uname -s因为option -s（--kernel-name）是默认值相同。看看为什么uname -s比这更好uname -o。</p>
<p>使用OS（而不是uname）简化了识别算法。您仍然可以单独使用uname，但您必须处理if/else块以检查所有MinGW，Cygwin等变体。</p>
<p>环境变量OS始终设置为"Windows_NT"不同的Windows版本（请参阅%OS%Wikipedia上的环境变量）。</p>
<p>另一种方法OS是环境变量MSVC（它检查MS Visual Studio的存在，请参阅使用Visual C ++的示例）。</p>
<p>下面我提供一个使用make和gcc构建共享库的完整示例：*.so或者*.dll取决于平台。这个例子尽可能简单易懂。</p>
<p>要在Windows上安装make，gcc请参阅Cygwin或MinGW。</p>
<p>我的例子基于五个文件</p>
<pre><code>├── lib
│   └── Makefile
│   └── hello.h
│   └── hello.c
└── app
    └── Makefile
    └── main.c</code></pre>
<p>提醒:Makefile使用制表缩进。在示例文件下面复制粘贴时的注意事项。</p>
<p>这两个Makefile文件</p>
<ol type="1">
<li><p>lib/Makefile</p>
<pre><code>ifeq ($(OS),Windows_NT)
    uname_S := Windows
else
    uname_S := $(shell uname -s)
endif

ifeq ($(uname_S), Windows)
    target = hello.dll
endif
ifeq ($(uname_S), Linux)
    target = libhello.so
endif
#ifeq ($(uname_S), .....) #See https://stackoverflow.com/a/27776822/938111
#    target = .....
#endif

%.o: %.c
    gcc  -c $&lt;  -fPIC  -o $@
    # -c $&lt;  =&gt; $&lt; is first file after &#39;:&#39; =&gt; Compile hello.c
    # -fPIC  =&gt; Position-Independent Code (required for shared lib)
    # -o $@  =&gt; $@ is the target =&gt; Output file (-o) is hello.o

$(target): hello.o
    gcc  $^  -shared  -o $@
    # $^      =&gt; $^ expand to all prerequisites (after &#39;:&#39;) =&gt; hello.o
    # -shared =&gt; Generate shared library
    # -o $@   =&gt; Output file (-o) is $@ (libhello.so or hello.dll)</code></pre></li>
<li><p>app/Makefile</p>
<pre><code>ifeq ($(OS),Windows_NT)
    uname_S := Windows
else
    uname_S := $(shell uname -s)
endif

ifeq ($(uname_S), Windows)
    target = app.exe
endif
ifeq ($(uname_S), Linux)
    target = app
endif
#ifeq ($(uname_S), .....) #See https://stackoverflow.com/a/27776822/938111
#    target = .....
#endif

%.o: %.c
    gcc  -c $&lt; -I ../lib  -o $@
    # -c $&lt;     =&gt; compile (-c) $&lt; (first file after :) = main.c
    # -I ../lib =&gt; search headers (*.h) in directory ../lib
    # -o $@     =&gt; output file (-o) is $@ (target) = main.o

$(target): main.o
    gcc  $^  -L../lib  -lhello  -o $@
    # $^       =&gt; $^ (all files after the :) = main.o (here only one file)
    # -L../lib =&gt; look for libraries in directory ../lib
    # -lhello  =&gt; use shared library hello (libhello.so or hello.dll)
    # -o $@    =&gt; output file (-o) is $@ (target) = &quot;app.exe&quot; or &quot;app&quot;</code></pre></li>
</ol>
<p>要了解更多信息，请阅读cfi指出的自动变量文档。</p>
<p>源代码</p>
<ul>
<li><p>lib/hello.h</p>
<pre><code>#ifndef HELLO_H_
#define HELLO_H_

const char* hello();

#endif</code></pre></li>
<li><p>lib/hello.c</p>
<pre><code>#include &quot;hello.h&quot;

const char* hello()
{
    return &quot;hello&quot;;
}</code></pre></li>
<li><p>app/main.c</p>
<pre><code>#include &quot;hello.h&quot; //hello()
#include &lt;stdio.h&gt; //puts()

int main()
{
    const char* str = hello();
    puts(str);
}</code></pre></li>
</ul>
<p>构建</p>
<p>修复Makefile（通过一个制表替换前导空格）的复制粘贴。</p>
<pre><code>&gt; sed  &#39;s/^  */\t/&#39;  -i  */Makefile</code></pre>
<p>make两个平台上的命令都是相同的。给定的输出是在类Unix操作系统上：</p>
<pre><code>&gt; make -C lib

  make: Entering directory &#39;/tmp/lib&#39;
  gcc  -c hello.c  -fPIC  -o hello.o
  # -c hello.c  =&gt; hello.c is first file after &#39;:&#39; =&gt; Compile hello.c
  # -fPIC       =&gt; Position-Independent Code (required for shared lib)
  # -o hello.o  =&gt; hello.o is the target =&gt; Output file (-o) is hello.o
  gcc  hello.o  -shared  -o libhello.so
  # hello.o        =&gt; hello.o is the first after &#39;:&#39; =&gt; Link hello.o
  # -shared        =&gt; Generate shared library
  # -o libhello.so =&gt; Output file (-o) is libhello.so (libhello.so or hello.dll)
  make: Leaving directory &#39;/tmp/lib&#39;</code></pre>
<pre><code>&gt; make -C app
  make: Entering directory &#39;/tmp/app&#39;
  gcc  -c main.c -I ../lib  -o main.o
  # -c main.c =&gt; compile (-c) main.c (first file after :) = main.cpp
  # -I ../lib =&gt; search headers (*.h) in directory ../lib
  # -o main.o =&gt; output file (-o) is main.o (target) = main.o
  gcc  main.o  -L../lib  -lhello  -o app
  # main.o   =&gt; main.o (all files after the :) = main.o (here only one file)
  # -L../lib =&gt; look for libraries in directory ../lib
  # -lhello  =&gt; use shared library hello (libhello.so or hello.dll)
  # -o app   =&gt; output file (-o) is app.exe (target) = &quot;app.exe&quot; or &quot;app&quot;
  make: Leaving directory &#39;/tmp/app&#39;</code></pre>
<p>运行</p>
<p>应用程序需要知道共享库的位置。</p>
<p>在Windows上，一个简单的解决方案是复制应用程序所在的库：</p>
<pre><code>&gt; cp -v lib/hello.dll app
`lib/hello.dll&#39; -&gt; `app/hello.dll&#39;</code></pre>
<p>在类Unix操作系统上，您可以使用LD_LIBRARY_PATH环境变量：</p>
<pre><code>&gt; export LD_LIBRARY_PATH=lib</code></pre>
<p>在Windows上运行该命令：</p>
<pre><code>&gt; app/app.exe
hello</code></pre>
<p>在类Unix操作系统上运行命令：</p>
<pre><code>&gt; app/app
hello</code></pre>
<h3 id="next">next</h3>
<h3 id="next-1">next</h3>
<h2 id="用法技巧">用法技巧</h2>
<h3 id="multiple-targets-in-a-rule-多目标写在一行">Multiple Targets in a Rule 多目标写在一行</h3>
<p>相同依赖和生成方式的目标可以写在一起。 生成方式也不用一定一样的，可以用自动化变量加处理函数来处理。 详见说明文档。</p>
<pre><code>bigoutput littleoutput : text.g
  generate text.g -$(subst output,,$@) &gt; $@</code></pre>
<p>is equivalent to:</p>
<pre><code>bigoutput : text.g
   generate text.g -big &gt; bigoutput
littleoutput : text.g
   generate text.g -little &gt; littleoutput</code></pre>
