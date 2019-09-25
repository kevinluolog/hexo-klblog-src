---
title: makefile
toc: TRUE
tag:
- 自动生成
- 技术
- 笔记
categories:
- 技术
- 笔记
---
<h1 id="sphinx">sphinx</h1>
<h2 id="sphinx-is-great">sphinx is great</h2>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h3 id="sphinx选项">sphinx选项</h3>
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
