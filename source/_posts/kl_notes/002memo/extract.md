---
title: extract
toc: TRUE
tag:
- 自动生成
- 技术
- 笔记
categories:
- 技术
- 笔记
---
<h1 id="extract">extract</h1>
<h2 id="摘录东西">摘录东西</h2>
<h2 id="新东西">新东西</h2>
<h3 id="graphviz">Graphviz</h3>
<p>高效而简洁的绘图工具graphviz。graphviz是贝尔实验室开发的一个开源的工具包，它使用一个特定的DSL(领域特定语言): dot作为脚本语言，然后使用布局引擎来解析此脚本，并完成自动布局。graphviz提供丰富的导出格式，如常用的图片格式，SVG，PDF格式等。</p>
<h2 id="网络">网络</h2>
<h3 id="日常开发中用到的工具swaggerswagger是一个restful文档生成工具">日常开发中用到的工具Swagger，swagger是一个RESTful文档生成工具。</h3>
<h3 id="页面定制css代码初探六h2h3-标题自动生成序号-详细探索过程"><a href="https://www.cnblogs.com/36bian/p/7609304.html">页面定制CSS代码初探（六）：h2、h3 标题自动生成序号 详细探索过程</a></h3>
<p>标题要不要加序号？ 直到我碰到一个人这么说</p>
<pre><code>手动维护编号实在是一件很闹心的事情， 如果位置靠前的某个段落被删除了， 那么几乎每个段落的编号都要手动修改一下。</code></pre>
<p>当即决定，放弃写序号，改由CSS自动生成。</p>
<p><a href="http://zencode.in/8.中文排版二三事.html">zencode.in/8.中文排版二三事.html</a></p>
<ul>
<li><p>安装setuptools</p>
<pre><code>https://pypi.python.org/pypi/setuptools
python2 setup.py install</code></pre></li>
<li><p>安装pip</p>
<pre><code>https://pypi.python.org/pypi/pip
python2 setup.py install
pip的安装目录E:\setup\Python27\Scripts，看下面截图中，有pip、pip2.7、pip2</code></pre></li>
<li><p>安装Python3</p>
<p>（由于Python3自带pip，所以无需另外安装pip）env自带</p></li>
<li><p>验证Python3里pip是否自动安装成功</p>
<p>在cmd里输入pip3或是pip3.5</p></li>
<li><p>若有的包不支持pip的安装形式</p>
<pre><code>将相应的文件下载解压后放入到某个目录下，用cmd进入到解压后的目录
若是给Python2安装该包，则执行python2 setup.py install
若是给Python3安装该包，则执行python setup.py install      </code></pre></li>
<li><p>pip2 和 pip3设置</p>
<p>这时候需要重新安装pip，命令分别为：</p>
<pre><code>python2 -m pip install –upgrade pip –force-reinstall
python3 -m pip install –upgrade pip –force-reinstall </code></pre>
<p>现在可以通过pip2 -V 和 pip3-V 查看两个版本的pip信息</p>
<p>以后只需运行pip2 install XXX和pip3 install XXX即可安装各自的python包。</p></li>
</ul>
