 ---
title: linux 
tag: 
- 001install 
- 笔记
categories:
- 001install 
- 自动生成
toc: TRUE
--- 
<h1 id="gramma-and-template">gramma and template</h1>
<h2 id="网络资源地址">网络资源地址</h2>
<p><a href="https://yq.aliyun.com/articles/681643">Linux基础知识——Linux常用命令大全</a></p>
<p><a href="https://man.linuxde.net/">Linux命令大全</a></p>
<h2 id="linux命令">Linux命令</h2>
<p><a href="https://www.cnblogs.com/ftl1012/tag/Linux%E5%91%BD%E4%BB%A4/">Linux命令</a></p>
<h3 id="wget">wget</h3>
<p><a href="https://www.cnblogs.com/ftl1012/p/9265699.html">Linux wget命令详解</a></p>
<p><a href="https://www.cnblogs.com/ftl1012/tag/Linux%E5%91%BD%E4%BB%A4/">Linux命令</a></p>
<p>wget是一个下载文件的工具，它用在命令行下。</p>
<p>使用wget -O下载并以不同的文件名保存(-O：下载文件到对应目录，并且修改文件名称)</p>
<pre><code>wget -O wordpress.zip http://www.minjieren.com/download.aspx?id=1080
wget https://github.com/jgm/pandoc/releases/download/1.17.1/pandoc-1.17.1-2-amd64.deb</code></pre>
<p>使用wget -b后台下载</p>
<pre><code>wget -b &lt;a href=&quot;http://www.minjieren.com/wordpress-3.1-zh_CN.zip&quot;&gt;http://www.minjieren.com/wordpress-3.1-zh_CN.zip&lt;/a&gt;

备注： 你可以使用以下命令来察看下载进度：tail -f wget-log</code></pre>
<p>利用-spider: 模拟下载，不会下载，只是会检查是否网站是否好着</p>
<pre><code>wget --spider  www.baidu.com #不下载任何文件</code></pre>
<h3 id="gsub函数">gsub函数</h3>
<p>gsub函数则使得在所有正则表达式被匹配的时候都发生替换</p>
<pre><code>gsub(regular expression, subsitution string, target string);
简称 gsub（r,s,t)</code></pre>
<h3 id="sub和gsub的区别">sub和gsub的区别</h3>
<p>sub匹配第一次出现的符合模式的字符串，相当于 sed 's//' 。 gsub匹配所有的符合模式的字符串，相当于 sed 's//g' 。 例如：</p>
<pre><code>awk &#39;{sub(/Mac/,&quot;Macintosh&quot;);print}&#39; urfile 用Macintosh替换Mac
awk &#39;{sub(/Mac/,&quot;MacIntosh&quot;,$1); print}&#39; file 第一个域内用</code></pre>
<p>Macintosh替换Mac 把上面sub换成gsub就表示在满足条件得域里面替换所有的字符。</p>
<p>awk的sub函数用法：</p>
<p>sub函数匹配指定域/记录中最大、最靠左边的子字符串的正则表达式，并用替换字符串替换这些字符串。如果没有指定目标字符串就默认使用整个记录。替换只发生在第一次匹配的时候。格式如下：</p>
<pre><code>sub (regular expression, substitution string):
sub (regular expression, substitution string, target string)</code></pre>
<p>实例：</p>
<pre><code>$ awk &#39;{ sub(/test/, &quot;mytest&quot;); print }&#39; testfile
$ awk &#39;{ sub(/test/, &quot;mytest&quot;, $1); print }&#39; testfile</code></pre>
<p>第一个例子在整个记录中匹配，替换只发生在第一次匹配发生的时候。 第二个例子在整个记录的第一个域中进行匹配，替换只发生在第一次匹配发生的时候。</p>
<p>如要在整个文件中进行匹配需要用到gsub</p>
<h3 id="awk-gawk">awk gawk</h3>
<p><a href="https://www.cnblogs.com/ftl1012/p/9250541.html">Linux awk命令详解</a></p>
<p><a href="https://blog.csdn.net/believexfr/article/details/78010117">linux gawk命令</a></p>
<p><a href="https://blog.51cto.com/13706064/2176615">LinuxShell编程之gawk详解</a></p>
<p>awk是一个强大的文本分析工具，相对于grep的查找，sed的编辑，awk在其对数据分析并生成报告时，显得尤为强大。简单来说awk就是把文件逐行的读入，以空格为默认分隔符将每行切片，切开的部分再进行各种分析处理。</p>
<p>使用方法 ： awk '{pattern + action}' {filenames}</p>
<p>尽管操作可能会很复杂，但语法总是这样，其中 pattern 表示 AWK 在数据中查找的内容，而 action 是在找到匹配内容时所执行的一系列命令。花括号（{}）不需要在程序中始终出现，但它们用于根据特定的模式对一系列指令进行分组。 pattern就是要表示的正则表达式，用斜杠括起来。</p>
<p>awk语言的最基本功能是在文件或者字符串中基于指定规则浏览和抽取信息，awk抽取信息后，才能进行其他文本操作。完整的awk脚本通常用来格式化文本文件中的信息。通常，awk是以文件的一行为处理单位的。awk每接收文件的一行，然后执行相应的命令，来处理文本。</p>
<p>gawk命令格式</p>
<p>Usage: gawk [POSIX or GNU styleoptions] -f progfile [--] file ...</p>
<p>Usage: gawk [POSIX or GNU styleoptions] [--] 'program' file ...</p>
<p>gawk选项</p>
<table style="width:75%;">
<colgroup>
<col width="20%" />
<col width="54%" />
</colgroup>
<thead>
<tr class="header">
<th>-F fs</th>
<th>指定描绘一行中数据字段的文件分隔符</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>-f file</td>
<td>指定读取程序的文件名</td>
</tr>
<tr class="even">
<td>-v var=value</td>
<td>定义gawk程序中使用的变量和默认值</td>
</tr>
<tr class="odd">
<td>-mf N</td>
<td>指定数据文件中要处理的字段的最大数目</td>
</tr>
<tr class="even">
<td>-mr N</td>
<td>指定数据文件中的最大记录大小</td>
</tr>
<tr class="odd">
<td>-W keyword</td>
<td>指定gawk的兼容模式或警告级别</td>
</tr>
</tbody>
</table>
<p>gawk的主要功能之一是其处理文本文件中数据的能力。它通过自动将变量分配给每行中的每个数据元素实现这一功能。默认情况下，gawk将下面的变量分配给在文本行中检测到的每个数据字段：</p>
<table style="width:50%;">
<colgroup>
<col width="6%" />
<col width="43%" />
</colgroup>
<thead>
<tr class="header">
<th>$0</th>
<th>表示整行文本</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>$1</td>
<td>表示文本行中的第一个数据字段</td>
</tr>
<tr class="even">
<td>$2</td>
<td>表示文本行中的第二个数据字段</td>
</tr>
<tr class="odd">
<td>$n</td>
<td>表示文本行中的第n个数据字段</td>
</tr>
</tbody>
</table>
<p>各数据字段依据文本行中的字段分隔符确定。gawk读取一行文本时，使用定义的字段分隔符描述各数据字段。gawk的默认字段分隔符是任意空白字符（如制表符或空格符）</p>
<h3 id="find">find</h3>
<p><a href="https://blog.csdn.net/l_liangkk/article/details/81294260">Linux-find命令详解</a></p>
<p>在目录结构中搜索文件，并执行指定的操作。Linux下find命令提供了相当多的查找条件，功能很强大</p>
<p>find命令格式：</p>
<pre><code>find path -option 【-print】 【-exec -ok |xargs |grep】 【command {} \;】</code></pre>
<p>Linux下find命令在目录结构中搜索文件，并执行指定的操作。Linux下find命令提供了相当多的查找条件，功能很强大 find常见命令参数</p>
<h4 id="命令选项">命令选项：</h4>
<pre><code>-name   按照文件名查找文件。
-perm   按照文件权限来查找文件。
-user   按照文件属主来查找文件。
-group  按照文件所属的组来查找文件。
-mtime -n +n 按照文件的更改时间来查找文件 【-7 7天之内 +7 7天前】
-nogroup  查找无效属组的文件，即该文件所属的组在/etc/groups中不存在。
-nouser  查找无效属主的文件，即该文件的属主在/etc/passwd中不存在。
-newer file1 ! file2 查找更改时间比文件file1新但比文件file2旧的文件。
-type  查找某一类型的文件，诸如：
         b - 块设备文件。
         d - 目录。
         c - 字符设备文件。
         p - 管道文件。
         l - 符号链接文件。
         f - 普通文件。
-size n：[c] 查找文件长度为n块的文件，带有c表示文件长度以字节计。
-depth：在查找文件时，首先查找当前目录中的文件，然后再在其子目录中查找。
-follow：如果find命令遇到符号链接文件，就跟踪至链接所指向的文件。
另外,下面三个的区别:
-amin n    查找系统中最后N分钟访问的文件
-atime n   查找系统中最后n*24小时访问的文件
-cmin n    查找系统中最后N分钟被改变文件状态的文件
-ctime n   查找系统中最后n*24小时被改变文件状态的文件
-mmin n    查找系统中最后N分钟被改变文件数据的文件
-mtime n   查找系统中最后n*24小时被改变文件数据的文件</code></pre>
<h4 id="常用的命令展示">常用的命令展示</h4>
<h4 id="查找普通文件目录">查找普通文件/目录</h4>
<pre><code>find /home/omd -type f  (普通文件)
find /home/omd -type d  (查询目录)</code></pre>
<h4 id="只显示1级目录文件且过滤自身">只显示1级目录文件且过滤自身</h4>
<pre><code>find ./ -maxdepth 1  -type d  ! -name &quot;hhh&quot;  </code></pre>
<h4 id="查找一天内被访问过access的文件">查找一天内被访问过(access)的文件</h4>
<pre><code>find /home/omd/ -atime -1 -type f </code></pre>
<h4 id="查询inode相同的文件">查询inode相同的文件</h4>
<dl>
<dt>::</dt>
<dd><p>find / -inum inode数字</p>
</dd>
</dl>
<h4 id="除了某个文件以为其余的均删除">除了某个文件以为，其余的均删除</h4>
<pre><code>find /home/omd/ -type f ! -name h.txt  | xargs  rm –f  
ls | grep -v &quot;h.txt&quot; |xargs rm -rf (与上面类似，删除除了某个文件外的所有文件)</code></pre>
<h4 id="删除目录下所有文件">删除目录下所有文件</h4>
<pre><code>find /tmp/ -type f -exec rm -rf {} \;
find /tmp/ -type f | xargs rm -rf</code></pre>
<h4 id="查看当前路径下所有文件的信息">查看当前路径下所有文件的信息：</h4>
<pre><code>find /tmp/ -type f ! -name a |xargs rm –rf
find ./ -type f -exec file {} \;</code></pre>
<p>  查找指定时间内修改过的文件 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^</p>
<pre><code># 当前路径下访问文件超过2分钟文件
find ./ -amin +2
# 当前路径下访问文件刚好2分钟的文件
find ./ -amin 2
find ./ -cmin +2
find ./ -mmin +2
find ./ -mtime +2
find ./ -ctime +2
find ./ -mtime +2
find ./ -ctime +2 
find / -ctime  +20  最近修改文件时间20分钟以前
find / -mtime  +7   修改文件为7天之前的(最重要)
find / -mtime  7    修改文件为第7天，就是往前推7天
find / -mtime  -7   修改文件为7天之内的</code></pre>
<h4 id="按照目录或文件的权限来查找文件">按照目录或文件的权限来查找文件</h4>
<pre><code>find /opt -perm 777</code></pre>
<h4 id="按大小查找文件">按大小查找文件</h4>
<pre><code>find / -size +10M  |sort 【查找大于10M的文件】
find / -size -10M  |sort 【查找小于10M的文件】
find / -size 10M   |sort  【查找10M的文件】</code></pre>
<p>  在test目录下查找不在test4子目录之内的所有文件 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^</p>
<pre><code>find ./test -path &quot;test/test4&quot; -prune -o -print
【可以使用-prune选项来指出需要忽略的目录。在使用-prune选项时要当心，因为如果你同时使用了-depth选项，那么-prune选项就会被find命令忽略】</code></pre>
<h4 id="查找比yum.log-但不比hhh.txt新的文件">查找比yum.log 但不比hhh.txt新的文件</h4>
<pre><code>[root@localhost ftl]# find / newer /var/log/yum.log ! -newer ./hhh.txt</code></pre>
<p>  查找更改时间在比log2012.log文件新的文件 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^</p>
<pre><code>find ./ -newer log2012.log</code></pre>
<h4 id="在当前目录下查找文件长度大于1-m字节的文件">在当前目录下查找文件长度大于1 M字节的文件</h4>
<pre><code>find ./ -size +1000000c –print
find ./ –size +1M -print</code></pre>
<h4 id="在homeapache目录下查找文件长度恰好为100字节的文件">在/home/apache目录下查找文件长度恰好为100字节的文件</h4>
<blockquote>
<p>find /home/apache -size 100c -print</p>
</blockquote>
<h4 id="在当前目录下查找长度超过10块的文件">在当前目录下查找长度超过10块的文件</h4>
<pre><code>find . -size 10 –print

 </code></pre>
<h4 id="其他命令">其他命令：</h4>
<pre><code>find /home/omd/ -name *.txt | while read line; do cp $line /home/omd/h;done
for name in `chkconfig | grep 3:on |awk &#39;{print $1}&#39;` ; do echo $name &gt;&gt; h.txt; done;
find /home/omd/ -name *.txt | xargs -i cp {} /home/omd/h
cat /home/omd/h/he.txt | while read line; do echo $line &gt;&gt; /home/omd/h.txt ; done;
cat /home/omd/h.txt | awk &#39;BEGIN{print &quot;Name &quot;} {print $1}&#39;
cat /home/omd/h.txt | xargs -I {} cat {}
find . -name  &quot;*.txt&quot; |xargs   sed -i &#39;s/hhhh/\hHHh/g&#39; </code></pre>
<h4 id="find命令之execokprint">find命令之execokprint</h4>
<p>ls -l命令放在find命令的-exec选项中</p>
<pre><code>find . -type f -exec ls -l {} \; 【{}   花括号代表前面find查找出来的文件名】</code></pre>
<h4 id="在目录中查找更改时间在n日以前的文件并删除它们">在目录中查找更改时间在n日以前的文件并删除它们</h4>
<pre><code>find ./ -mtime +10 -exec rm {} \;</code></pre>
<h4 id="在目录中查找更改时间在n日以前的文件并删除它们在删除之前先给出提示">在目录中查找更改时间在n日以前的文件并删除它们，在删除之前先给出提示</h4>
<pre><code>find / -mtime +1 -a -name &quot;*.log&quot; -type f -ok cp {} /tmp/ftl \; 【-ok是安全模式，根exec效果同】</code></pre>
<h4 id="exec中使用grep命令">exec中使用grep命令</h4>
<pre><code>find /etc -name &quot;passwd*&quot; -exec grep &quot;root&quot; {} \; 【过滤文件内容用】</code></pre>
<h4 id="查找文件移动到指定目录">查找文件移动到指定目录</h4>
<pre><code>find . -name &quot;*.log&quot; -exec mv {} .. \;</code></pre>
<h4 id="用exec选项执行cp命令">用exec选项执行cp命令  </h4>
<pre><code>find . -name &quot;*.log&quot; -exec cp {} test3 \;</code></pre>
<h2 id="linux常用命令大全">Linux常用命令大全</h2>
<p><a href="https://yq.aliyun.com/articles/681643">Linux基础知识——Linux常用命令大全</a></p>
<h3 id="创建目录-mkdir">创建目录 mkdir</h3>
<pre><code>作用：在当前目录下创建下一级目录，无法跨级创建

常用参数
-p 创建多级目录（跨级创建）
-v 查看目录创建的过程（创建目录可视化）</code></pre>
<h3 id="删除文件-rmdir">删除文件 rmdir</h3>
<pre><code>仅可以删除空白目录（不可以删除包含内容的目录）</code></pre>
<h3 id="创建文件-touch">创建文件 touch</h3>
<pre><code>作用：创建空白文件</code></pre>
<h3 id="删除文件或目录-rm">删除文件或目录 rm</h3>
<pre><code>1、删除文件
rm 文件名（删除时会询问是否删除）
rm -f 文件名（强制删除）
rm -v 文件名（可视化删除）

2、删除目录
rm -r 目录名（删除时会询问是否删除）
rm -rf 目录名（强制删除，若目录不存在，此命令依旧可以执行，不报错）
rm -rv 目录名（可视化强制）
删除目录和文件时，先删除文件在删除目录

rm的用法如下：
1、删除文件夹以及文件夹中的所有文件命令：
rm -rf 目录名字
其中：
-r：向下递归删除
-f：直接强行删除，且没有任何提示
2、删除文件命令
rm -f 文件名
将会强行删除文件，且无提示
注意：
使用rm -rf要格外注意，linux中没有回收站，慎重删除

如果空目录就可以用rmdir
如果是有文件的目录就用 rm -f
一般文件用 rm</code></pre>
<h3 id="复制文件或目录可以对目标文件或目录重命名-cp">复制文件或目录（可以对目标文件或目录重命名） cp</h3>
<pre><code>源文件始终不变，仅仅是对目标文件进行改变。

1、复制文件
格式：cp 源文件 目标文件

2、拷贝目录（目录需要加/）注意区分绝对路径和相对路径
格式：cp -r 源目录 目标目录</code></pre>
<h3 id="移动类似于windows中的剪切mv">移动（类似于Windows中的剪切）mv</h3>
<pre><code>注意与复制命令cp的区别。mv命令使源文件的状态发生改变。

1、移动目录时：
若果目录存在，则会将原目录移动到目标目录下；如果目录不存在，则相当于移动并重命名</code></pre>
<h3 id="查看文件内容cat-tac-more-less-head-tail">查看文件内容cat tac more less head tail</h3>
<h3 id="misc">misc</h3>
<h4 id="linux-cp命令详解">Linux-cp命令详解</h4>
<p><a href="https://www.linuxidc.com/Linux/2019-08/159913.htm">Linux-cp命令详解</a></p>
<p>默认情况下，如果目标文件存在，它将被覆盖。-n 选项告诉 cp 不要覆盖现有文件。要提示确认，请使用该 -i 选项。</p>
<pre><code>cp -i file.txt file_backup.txt</code></pre>
<p>如果要仅在文件比目标更新时复制文件，请使用以下 -u 选项：</p>
<pre><code>cp -u file.txt file_backup.txt</code></pre>
<p>另一个可能有用的选项是 -v，他告诉 cp 打印详细输出：</p>
<pre><code>cp -v file.txt file_backup.txt
&#39;file.txt&#39; -&gt; &#39;file_backup.txt&#39;</code></pre>
<p>使用 cp 命令复制目录 要复制目录(包括其所有文件和子目录)，请使用 -R 或 -r 选项。在以下示例中，我们将目录复制 Pictures 到 Pictures_backup ：</p>
<pre><code>cp -R Pictures Pictures_backup</code></pre>
<p>要仅复制文件和子目录，而不复制目标目录，请使用以下 -T 选项：</p>
<pre><code>cp -RT Pictures Pictures_backup</code></pre>
<p>另一种只复制目录内容而不是目录本身的方法是使用通配符 (*) 。以下命令的缺点是它不会复制隐藏文件和目录(以点 . 开头的文件和目录) ：</p>
<pre><code>cp -RT Pictures/* Pictures_backup/</code></pre>
<h4 id="拷贝命令比较xcopywin-vs-cplinux">拷贝命令比较，XCOPY(win) VS cp(linux)</h4>
<p>windows下XCOPY命令，目标目录的父目录可以不存在，命令自己会创建</p>
<p>Linux下cp不会自动创建目标目录的父目录，如果目标目录不在在会直接报错。</p>
<h4 id="gnumake-wildcardwin-vs-cplinux">gnumake-wildcard(win) VS cp(linux)</h4>
<p>windows 下gnumake命令wildcard返回匹配文件名带目录（待确认）</p>
<p>Linux 下gnumake命令wildcard返回匹配文件名带目录（已确认）</p>
<h4 id="touch命令直接创建空白文件">touch命令直接创建空白文件</h4>
<p>touch test.txt</p>
<p>命令为：“touch [选项] [文件]”。</p>
<pre><code>-a   只更改访问时间
-c, --no-create 不创建任何文件
-d, --date=字符串 使用指定字符串表示时间而非当前时间
-f   (忽略)
-h, --no-dereference  会影响符号链接本身，而非符号链接所指示的目的地
  (当系统支持更改符号链接的所有者时，此选项才有用)
-m   只更改修改时间
-r, --reference=FILE  use this file&#39;s times instead of current time
-t STAMP              use [[CC]YY]MMDDhhmm[.ss] instead of current time
    --time=WORD        change the specified time:
                        WORD is access, atime, or use: equivalent to -a
                        WORD is modify or mtime: equivalent to -m
    --help  显示此帮助信息并退出
    --version  显示版本信息并退出</code></pre>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
