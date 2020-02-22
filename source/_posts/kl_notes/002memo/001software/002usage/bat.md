---
title: bat
tag: 
- 自动生成
- 002usage
categories:
- 002usage
toc: TRUE
---
<h1 id="batch">batch</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="tips">tips</h2>
<h3 id="cd和dp0的区别">%cd%和%~dp0的区别</h3>
<p>&lt;<a href="https://www.jianshu.com/p/5a1a882ead95">https://www.jianshu.com/p/5a1a882ead95</a>&gt;</p>
<ol type="1">
<li><p>%cd% 可以用在批处理文件中，也可以用在命令行中；</p>
<p>展开后，是驱动器盘符:+当前目录，如在dos窗口中进入c:dir目录下面，</p>
<p>输入：echo %cd% ，则显示为：c:dir 。</p></li>
<li><p>%~dp0只可以用在批处理文件中，它是由它所在的批处理文件的目录位置决定的，是批处理文件所在的盘符:+路径。在执行这个批处理文件的过程中，它展开后的内容是不会改变的。</p></li>
</ol>
<h3 id="pushd-dp0-popd">pushd "%~dp0" popd</h3>
<p>进入执行文件所在目录，并且把原先目录推入目录栈，popd就是回到原先的目录</p>
<p>&lt;<a href="https://www.cnblogs.com/suanec/p/8026964.html">https://www.cnblogs.com/suanec/p/8026964.html</a>&gt;</p>
<p>pushd和popd在linux中可以用来方便地在多个目录之间切换。</p>
<h3 id="setlocal-enabledelayedexpansion">setlocal enabledelayedexpansion</h3>
<p>是扩展本地环境变量延迟, !!引用 &lt;<a href="https://www.jb51.net/article/29323.htm">https://www.jb51.net/article/29323.htm</a>&gt;</p>
<h3 id="cd-引用当前目录可用在cmd直接进启动目录">%CD% 引用当前目录，可用在CMD直接进启动目录</h3>
<p>if "%CD%"=="%~dp0" cd /d "%HOMEDRIVE%%HOMEPATH%"</p>
<h3 id="setlocal-与-endlocal-命令">Setlocal 与 Endlocal 命令</h3>
<p>开始与终止批处理文件中环境改动的本地化操作。在执行 Setlocal 之后所做的环境改动只限于批处理文件。要还原原先的设置，必须执行 Endlocal。达到批处理文件结尾时，对于该批处理文件的每个尚未执行的 Setlocal 命令，都会有一个隐含的 Endlocal 被执行。</p>
<h3 id="复合语句连接符和">复合语句连接符（&amp;、&amp;&amp;和||）</h3>
<ul>
<li><p>&amp; [...] command1 &amp; command2</p>
<p>用来分隔一个命令行中的多个命令。Cmd.exe 运行第一个命令，然后运行第二个命令。</p></li>
<li><p>&amp;&amp; [...] command1 &amp;&amp; command2</p>
<p>只有在符号 &amp;&amp; 前面的命令成功时，才用于运行该符号后面的命令。Cmd.exe 运行第一个命令，然后只有在第一个命令运行成功时才运行第二个命令。</p></li>
<li><p>|| [...] command1 || command2</p>
<p>只有在符号 || 前面的命令失败时，才用于运行符号 || 后面的命令。Cmd.exe 运行第一个命令，然后只有在第一个命令未能运行成功（接收到大于零的错误代码）时才运行第二个命令。</p></li>
</ul>
<h3 id="cmd命令太长分成多行的写法">cmd命令太长分成多行的写法</h3>
<p>连接符是“^”</p>
<pre><code>ec^
ho hello world
pause</code></pre>
