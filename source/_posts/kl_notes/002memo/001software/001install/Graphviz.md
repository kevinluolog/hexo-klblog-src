---
title: Graphviz
tag: 
- 自动生成
- 笔记
categories:
- 001install
toc: TRUE
---
<h1 id="graphviz">Graphviz</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="install">install</h2>
<ol type="1">
<li><a href="http://www.graphviz.org/download/">download</a></li>
<li>设置
<ol type="i">
<li><p>环境变量 path: ~graphviz-2.38bin</p></li>
<li><p>font中文支持</p>
<ul>
<li>graphviz-2.38etcfontsfonts.conf， 指明字体文件目录</li>
</ul>
<blockquote>
<pre><code>&lt;dir&gt;#WINFONTDIR#&lt;/dir&gt;
改为
&lt;dir&gt;C:\Windows\Fonts&lt;/dir&gt;</code></pre>
</blockquote>
<ul>
<li>.dot文件指明引用哪种字体</li>
</ul>
<blockquote>
<pre><code>.dot文件加入
fontname=&quot;Microsoft YaHei&quot;
edge [fontname=&quot;Microsoft YaHei&quot;];
node [fontname=&quot;Microsoft YaHei&quot;];</code></pre>
</blockquote></li>
</ol></li>
<li>tools</li>
</ol>
<blockquote>
<ul>
<li>~graphviz-2.38bingvedit.exe</li>
<li>~graphviz-2.38binlefty.exe</li>
<li>~graphviz-2.38bindotty.exe</li>
</ul>
</blockquote>
<h2 id="tips">tips</h2>
<h2 id="faq">faq</h2>
