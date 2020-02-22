---
title: sphinx
tag: 
- 自动生成
- 001install
categories:
- 001install
toc: TRUE
---
<h1 id="sphinx">sphinx</h1>
<h2 id="sphinx-is-great">sphinx is great</h2>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h3 id="sphinx-install3">sphinx install+3</h3>
<p><a href="http://www.sphinx-doc.org/en/master/usage/installation.html#linux">sphinx install 官方spec</a></p>
<h4 id="windows">windows</h4>
<p><a href="https://pypi.org/project/Sphinx/">pypi sphinx website</a></p>
<p>pip install Sphinx</p>
<p>or</p>
<p>pip install -U sphinx</p>
<p>版本显示：</p>
<p>sphinx-build --version</p>
<h4 id="linux">Linux</h4>
<h5 id="debianubuntu">Debian/Ubuntu</h5>
<p>Install either python3-sphinx (Python 3) or python-sphinx (Python 2)</p>
<p>using apt-get: :</p>
<pre><code>$ apt-get install python3-sphinx</code></pre>
<p>If it not already present, this will install Python for you.</p>
<h5 id="rhel-centos">RHEL, CentOS</h5>
<p>Install python-sphinx using yum: :</p>
<pre><code>$ yum install python-sphinx</code></pre>
<p>If it not already present, this will install Python for you.</p>
<h4 id="mac-os">mac Os</h4>
<p>Sphinx can be installed using Homebrew, MacPorts, or as part of a Python distribution such as Anaconda.</p>
<p>Homebrew :</p>
<pre><code>$ brew install sphinx-doc</code></pre>
<h3 id="sphinx项目创建">sphinx项目创建</h3>
<p><a href="http://www.sphinx-doc.org/en/master/usage/quickstart.html">sphinx spec: Getting Started</a></p>
<p>需要创建两个文件必须文件</p>
<ul>
<li><p>conf.py</p>
<p>where you can configure all aspects of how Sphinx reads your sources and builds your documentation.</p></li>
<li><p>index.rst</p>
<p>a master document, The main function of the master document is to serve as a welcome page, and to contain the root of the “table of contents tree” (or toctree). This is one of the main things that Sphinx adds to reStructuredText, a way to connect multiple files to a single hierarchy of documents.</p></li>
</ul>
<p>可以手工添加，也可以用下面的sphinx-quickstart来创建一个模板</p>
<h4 id="sphinx-quickstart-模式">sphinx-quickstart 模式</h4>
<pre><code>$ sphinx-quickstart</code></pre>
<p>自动创建两个文件必须文件 conf.py， index.rst (if you accepted the defaults)，</p>
<p>还有文件make.bat，makefile， 目录_static，_templates</p>
<h4 id="直接用sphinx-build-program">直接用sphinx-build program:</h4>
<p>有了conf.py， index.rst, 就可以直接</p>
<pre><code>$ sphinx-build -b html sourcedir builddir</code></pre>
<h3 id="sphinx选项">sphinx选项</h3>
<p>引入graphviz???要加入详细描述。。。kl+</p>
<div class="graphviz">
<dl>
<dt>digraph foo {</dt>
<dd><p>"step 1" -&gt; "step 2"; "step 2" -&gt; "step 3"; "step 3" -&gt; "step 1";</p>
</dd>
</dl>
<p>}</p>
</div>
<div class="graphviz">
<p>H:tmp_H001.work002git000GTdot01.dot</p>
</div>
<h3 id="issues">issues</h3>
<p>kevinluo</p>
<h4 id="makefile-中设定-sourcedir-失败">makefile 中设定 SOURCEDIR 失败</h4>
<ul>
<li>目的：</li>
</ul>
<p>想把源文件和编译位置分开，这样可以直接把github控制下的目录作为源文件，同时编译位置可以任意，这样编译系统和编译输出文件不会进入github系统。</p>
<ul>
<li><p>问题：</p>
<pre><code>makefile中：
修改
SOURCEDIR     = source
为
SOURCEDIR     = &quot;H:\tmp_H\001.work\002git\kdoc\003work\002memo\001software&quot;</code></pre>
<p>提示出错，"conf.py 找不到。"</p></li>
<li><p>分析：</p>
<p>一开始以为是文件目录的写法不对，或者是没有加引号。加入echo分析，发现SOURCEDIR仍为source,没改过来。不起作用。原来是没有理解透sphinx的MAKEFILE变量overriding的顺序。make.bat中带入的变量会override makefile中的变量定义。.bat文件相当于命令行运行。此make是个BAT,非真正的make.exe.</p></li>
<li><p>解决：</p>
<p>直接跑到make.bat 中修改即可以。</p></li>
</ul>
<h4 id="index.rst中用glob加入toctree的多文件内容失败没找出来">index.rst中用glob加入toctree的多文件内容失败，没找出来</h4>
<ul>
<li><p>目的：</p>
<p>用通配符*把当前和子文件夹中所有的.rst文件找出来，加入toctree</p></li>
<li><p>问题：</p>
<p>*用了，不起作用，子文件夹中一个文件也没找出来。</p></li>
<li><p>分析：</p>
<p>glob只匹配指定文件夹1层，不包括子文件夹。</p></li>
<li><p>解决：</p>
<p>每个文件夹指定匹配模式 001install/*</p>
<p>001install/*</p></li>
</ul>
<h3 id="tips">tips</h3>
<h3 id="faq">FAQ</h3>
