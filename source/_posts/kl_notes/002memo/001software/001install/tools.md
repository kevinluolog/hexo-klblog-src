---
title: tools
tag: 
- 自动生成
- 笔记
categories:
- 001install
toc: TRUE
---
<h1 id="little-tools">Little Tools</h1>
<div class="contents">
<p>contents</p>
</div>
<div class="section-numbering">

</div>
<h2 id="iconv-编码转换">iconv 编码转换</h2>
<h3 id="参考链接">参考链接</h3>
<p><a href=""></a></p>
<p><a href="https://blog.csdn.net/sunnypotter/article/details/18218707">iconv: illegal input sequence at position</a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<h3 id="用法">用法</h3>
<p>使用iconv 命令</p>
<pre><code>iconv -f GBK -t UTF-8 file1 -o file2

#   iconv -f GBK -t UTF-8 $$@.tmp &gt;$$@
# 加入-c，表示忽略那些不能解释的字符
#   iconv -f GBK -t UTF-8 -c $$@.tmp &gt;$$@</code></pre>
<h3 id="问题">问题</h3>
<h4 id="iconv-illegal-input-sequence-at-position的错误">“iconv: illegal input sequence at position”的错误</h4>
<p><a href="https://blog.csdn.net/sunnypotter/article/details/18218707">iconv: illegal input sequence at position</a></p>
<p>在使用iconv转换文件的字符编码时，如果遇到类似“iconv: illegal input sequence at position”的错误，原因是需要转换的字符编码没有涵盖文件中的字符，比如，将一个简体中文的GB2312的文件转换为BIG5的编码，而在繁体编码的BIG5里面，不包含很多的简体中文字符，所以在转换的时候就会遇到如上的错误。</p>
<p>顺便提供一个用于查看文件编码的工具“enca”，我在everest 0.5下做的RPM包。用法很简单， :</p>
<pre><code>#　enca filename</code></pre>
<p>解决方法，忽略那些不能解释的字符：</p>
<pre><code>iconv -f cp936 -t utf-8 -c file1 &gt;  file2</code></pre>
