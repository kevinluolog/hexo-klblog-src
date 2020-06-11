---
title: tools
tag: 
- 自动生成
- 001install
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
<h2 id="命令行解压缩-zipunzip7z.exerar.exe">命令行解压缩-zip/unzip/7z.exe/rar.exe</h2>
<h3 id="unzip">unzip</h3>
<h4 id="下载">下载</h4>
<p><a href="">win32 zip下载地址 &lt;http://gnuwin32.sourceforge.net/packages/zip.htm &gt;</a></p>
<p><a href="http://gnuwin32.sourceforge.net/packages/unzip.htm">win32 unzip下载地址</a></p>
<h4 id="用法-1">用法</h4>
<p>批处理：</p>
<blockquote>
<pre><code>set EXT_DIR=&quot;H:\tmp\downloads\chrome\周读readweek\000\pdf\xx&quot;
@REM unzip [-Z] [-cflptuvz[abjnoqsCLMVX$/:]] file[.zip] [file(s) ...]  [-x xfile(s) ...] [-d exdir]
@REM -j 表示解压不带目录(必须放到解压文件名之前)， -d 后面接目标目录(必须放到最后面)
@REM unzip -j *.zip -d %EXT_DIR%
unzip -j *.zip -d %EXT_DIR%</code></pre>
</blockquote>
<p>注意： 需要加入执行路径，如果直接打入路径引用unzip会提示出错。</p>
<h3 id="z.exe">7z.exe</h3>
<h4 id="下载-1">下载</h4>
<h4 id="用法-2">用法</h4>
<p><a href="https://blog.csdn.net/WPwalter/article/details/90638622">使用7-Zip 的命令行版本来压缩和解压文件</a></p>
<p>运行 7z.exe 后可以看到命令行中列出了可用的命令行命令：</p>
<pre><code>a：将文件添加到压缩档案中
b：测试压缩或解压算法执行时的 CPU 占用
d：从压缩档案中删除文件
e：将压缩档案中的所有文件解压到指定路径，所有文件将输出到同一个目录中
h：计算文件的哈希值
i：显示有关支持格式的信息
l：列出压缩档案的内容
rn：重命名压缩档案中的文件
t：测试压缩档案的完整性
u：更新要进入压缩档案中的文件
x：将压缩档案中的所有文件解压到指定路径，并包含所有文件的完整路径</code></pre>
<p>解压一个文件</p>
<pre><code>7z x {fileName} -o{outputDirectory}
特别注意：-o 和 {outputDirectory} 之间是 没有空格 的。</code></pre>
<p>一个例子：</p>
<pre><code>7z x C:\Users\walterlv\demo.7z -oC:\Users\walterlv\demo</code></pre>
