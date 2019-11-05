---
title: memo
tag: 
- 自动生成
- 笔记
categories:
- 000misc
toc: TRUE
---
<h1 id="memo">memo</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="recent">recent</h2>
<h3 id="xxx">xxx</h3>
<h2 id="life">life</h2>
<h3 id="xxx-1">xxx</h3>
<h2 id="study">study</h2>
<h2 id="编程">编程</h2>
<h3 id="经验">经验</h3>
<h3 id="web">web</h3>
<p>wiki:</p>
<p><a href="http://encyclopedia.thefreedictionary.com/">encyclopedia.thefreedictionary.com</a></p>
<p><a href="https://www.answers.com/">www.answers.com</a></p>
<p><a href="https://www.sohu.com/a/230583209_614840">吸管秒变笛子</a></p>
<h2 id="misc">misc</h2>
<h3 id="xxx-2">xxx</h3>
<h2 id="temp">temp</h2>
<h3 id="xxx-3">xxx</h3>
<h3 id="raw-materials">raw materials</h3>
<hr />
<p>用echo $date，结果只输出一个ate</p>
<hr />
<p>date +%Y%m%d -d @1425384141</p>
<hr />
<p>cp -t -T问题,想copy目录里的文件和子目录，travis提示错</p>
<hr />
<p>只查看最后一行 tail -1</p>
<hr />
<p>%ad author date (format respects --date= option)</p>
<p>--date=iso (or --date=iso8601) shows timestamps in a ISO 8601-like format. The differences to the strict ISO 8601 format are:</p>
<p>????? For TravisCI users, simply add a config to .travis.yml so it clones the full repository history: <a href="https://github.com/MestreLion/git-tools#install">MestreLion/git-tools</a></p>
<p>可以解决拉取全部历史原数据到本地的问题，不加在clone时，只是本分支的历史。这样git log 能拿到文件所有commit的时间</p>
<p># 根据上面网址介绍加入下面两行 git: depth: false</p>
<p>????? <a href="https://hexo.io/docs/variables#Page-Variables">hexo.io/docs/variables#Page-Variables</a></p>
<p><span class="title-ref">https://hexo.io/zh-cn/docs/variables.html#%E9%A1%B5%E9%9D%A2%E5%8F%98%E9%87%8F &gt;</span>__</p>
<p>??? Linux下修改文件创建时间(修改文件更改时间) 进到要改的文件目录里 find . -name “<em>” -exec touch ‘{}’ ; 注：最后一定要加分号，{}外一定要加单引号，</em>表示所有的文件（. 代表当前目录下）</p>
<p>??? <a href="http://wp.huangshiyang.com/hexo%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98%E8%A7%A3%E5%86%B3%E6%96%B9%E6%A1%88">Hexo常见问题解决方案</a></p>
<p><a href="https://code.skyheng.com/post/50982.html">Hexo搭建技术博客使用与常见问题详细讲解</a></p>
<p><a href="https://www.jianshu.com/p/ef88b5bbb914">大前端-5分钟带你读懂Hexo源码设计模式</a></p>
<p><a href="https://blog.csdn.net/li20081006/article/details/73319054">Hexo源码剖析</a></p>
<p><a href="https://segmentfault.com/a/1190000018082781?utm_source=tag-newest">hexo博客框架从入门到弃坑</a></p>
<p><a href="https://www.jianshu.com/p/7bec9866a04d">hexo-generator-index 源码分析</a></p>
<p><a href="https://hexo.io/zh-cn/api/filter">hexo过滤器before_post_render-theme\scripts\filters\kl-touch-file-time.js</a></p>
<p><a href="http://www.alltoall.net/rst_pdf/">ALL TO ALL 在线格式转换</a></p>
<p><a href="https://www.qifeiye.com/">起飞页建站平台</a></p>
<p><a href="http://luly.lamost.org/oldtown/?p=385">ubuntu下通过PPA源安装texlive2012</a></p>
<p><a href="https://www.cnblogs.com/ccoming/p/7810861.html">Latex中文支持Ubuntu</a></p>
<p>可以使用fc-list :lang=zh-cn查看所有中文字体 详细设置可以看这个: ubuntu下latex终极安装方案的字体部分=D</p>
<p><a href="http://segmentfault.com/a/1190000004059490">ubuntu下latex终极安装方案的字体部分</a></p>
<p><a href="https://segmentfault.com/a/1190000004059490">Ubuntu 14.04 下 TexLive2014 完美安装攻略</a></p>
<p><a href="http://www.it1352.com/650222.html">间接链接：如何避免“太深嵌套”使用Sphinx创建PDF时出错？(How to avoid the “too deeply nested error” when creating PDFs with Sphinx?)</a></p>
<p><span class="title-ref">直接链接：如何避免“太深嵌套”使用Sphinx创建PDF时出错？(How to avoid the “too deeply nested error” when creating PDFs with Sphinx?) &lt;https://www.xszz.org/faq-1/question-2018083122086.html &gt;</span>__</p>
<p><a href="https://www.sphinx-doc.org/en/master/latex.html#latex-elements-confval">latex-elements：preamble</a></p>
<p><a href="https://blog.csdn.net/gengyuchao/article/details/101215243">Ubuntu系统中添加中文字体和修改默认中文字体</a></p>
<p><a href="https://wiki.ubuntu.org.cn/%E5%AD%97%E4%BD%93">字体- Ubuntu中文wiki.ubuntu.org.cn</a></p>
<p>获取字体 中文 主条目：免费中文字体 sudo apt-get install ttf-wqy-microhei #文泉驿-微米黑 sudo apt-get install ttf-wqy-zenhei #文泉驿-正黑 sudo apt-get install xfonts-wqy #文泉驿-点阵宋体</p>
<p><a href="https://wiki.ubuntu.org.cn/%E5%85%8D%E8%B4%B9%E4%B8%AD%E6%96%87%E5%AD%97%E4%BD%93">免费中文字体wiki.ubuntu.org.cn</a></p>
<p><a href="https://www.ucloud.cn/yun/23516.html">ubuntu添加中文字体ucloud</a> ubuntu添加中文字体ubuntu 查看系统类型 cat /proc/version</p>
<p>查看中文字体 fc-list :lang=zh-cn</p>
<p>安装字体 apt-get install -y --force-yes --no-install-recommends fonts-wqy-microhei</p>
<p>apt-get install -y --force-yes --no-install-recommends ttf-wqy-zenhei</p>
<p><a href="https://www.cnblogs.com/jpfss/p/7895773.html">Ubuntu 安装 Courier New字体和雅黑consolas字体</a></p>
<p><a href="http://zenozeng.github.io/Free-Chinese-Fonts/">网站链接-免费中文字体整理zenozeng.github.io/Free-Chinese-Fonts</a></p>
<p><a href="https://github.com/zenozeng/Free-Chinese-Fonts">网站源码-免费中文字体整理github.com/zenozeng/Free-Chinese-Fonts</a></p>
<p><a href="http://blog.sciencenet.cn/blog-597740-1077676.html">[转载]latex】itemize, enumerate枚举，编号使用及编号样式设计</a></p>
<p><a href="https://www.jb51.net/LINUXjishu/123859.html">linux比较两个文件是否一样(linux命令md5sum使用方法)</a></p>
<p><a href="https://www.cnblogs.com/xudong-bupt/p/6493903.html">linux 比较两个文件夹不同 (diff命令, md5列表)</a></p>
<p>比较文件夹diff，可以直接使用diff命令</p>
<pre><code>[root@~]# diff -urNa dir1 dir2
　　-a Treat all files as text and compare them line-by-line, even if they    do not seem to be text.
　　-N, --new-file
　　　　In directory comparison, if a file is found in only one directory,    treat it as present but empty in the other directory.
　　-r When comparing directories, recursively compare any subdirectories    found.
　　-u Use the unified output format.</code></pre>
<p>比较文件夹diff，也可以比较文件MD5列表。下面命令可以获取文件夹中文件md5列表</p>
<pre><code>find /home/ -type f -not \( -name &#39;.*&#39; \) -exec md5sum {} \;
说明：
(1) /home/文件目录
(2) -type f 文件类型为普通文件
(3) -not \( -name &#39;.*&#39; \)  过滤掉隐藏文件。可以过滤掉不需要考虑的文件
(4) -exec md5sum {} \;  对每个文件执行md5sum命令 </code></pre>
<p><a href="https://www.cnblogs.com/kevingrace/p/10201723.html">linux下md5sum用法 (查看文件或字符串的md5值)</a></p>
<p>[<a href="mailto:root@web-master">root@web-master</a> ~]# echo -n "hello world"cut -d" " -f1</p>
<p>5eb63bbbe01eeed093cb22bb8f5acdc3</p>
<p>命令解释：</p>
<p>md5sum: 显示或检查 MD5(128-bit)</p>
<p>校验和,若没有文件选项，或者文件处为"-"，则从标准输入读取。</p>
<p>echo -n : 不打印换行符。(注意: echo -n 后面的-n参数必须加上,</p>
<p>这样算出的字符串的md5值才正确)</p>
<p>cut:</p>
<p>cut用来从标准输入或文本文件中剪切列或域。剪切文本可以将之粘贴到一个文本文件。 -d 指定与空格和tab键不同的域分隔符。-f1 表示第一个域。</p>
<p>查看一个文件的md5值</p>
<p>[<a href="mailto:root@web-master">root@web-master</a> ~]# echo "test md5" &gt; kevin.sql</p>
<p>查看并获取这个文件的md5值</p>
<p>[<a href="mailto:root@web-master">root@web-master</a> ~]# md5sum kevin.sql</p>
<p>170ecb8475ca6e384dbd74c17e165c9e kevin.sql</p>
<p>[<a href="mailto:root@web-master">root@web-master</a> ~]# md5sum kevin.sql|cut -d" " -f1</p>
<p>170ecb8475ca6e384dbd74c17e165c9e</p>
<p>生产这个个文件的md5值</p>
<p>[<a href="mailto:root@web-master">root@web-master</a> ~]# md5sum kevin.sql &gt; kevin.sql.md5</p>
<p>检查两个文件是否一样，可以通过比较两个文件的md5值 (后续可以用这个方法来检验kevin.sql文件是否被修改)。</p>
<p>[<a href="mailto:root@web-master">root@web-master</a> ~]# md5sum kevin.sql</p>
<p>170ecb8475ca6e384dbd74c17e165c9e kevin.sql</p>
<p>[<a href="mailto:root@web-master">root@web-master</a> ~]# cat kevin.sql.md5</p>
<p>170ecb8475ca6e384dbd74c17e165c9e kevin.sql</p>
<p><a href="https://www.latexstudio.net/archives/51759.html">耿老师详解 LaTeX 编译过程绘图源码</a></p>
<p><a href="https://www.latexstudio.net">LaTeX 工作室</a></p>
<p><a href="https://www.latexstudio.net/page/tex-documents/">学习资源-LaTeX工作室</a></p>
<p><a href="http://texdoc.net/">TeXDoc-在线的texdoc 应用站点可以看到 LaTeX 配套的文档和宏包。</a></p>
<p><a href="http://math.ecnu.edu.cn/~latex/">LaTeX 科技排版--华东师范大学数学系 LaTeX 教学课程网页</a></p>
<p><a href="http://math.ecnu.edu.cn/~jypan/Teaching/Latex/">潘建瑜老师 LaTeX 科技排版</a></p>
<p><a href="http://aff.whu.edu.cn/huangzh/">黄正华老师 LaTeX 教学首页</a></p>
<p><a href="http://www.tex.ac.uk/index.html">UK TeX FAQ-这是非常完整的TeX常见问题，推荐多多阅读</a></p>
<p><a href="https://www.cnblogs.com/xingchong/p/9961368.html">linux 命令 find与rm实现查找并删除目录或文件</a></p>
<p><a href="https://www.jb51.net/article/99315.htm">https://www.jb51.net/article/99315.htm</a></p>
<p><a href="https://blog.51cto.com/13528748/2119490">linux下find查找文件后使用xargs和exec进行删除、压缩处理。</a></p>
<p><a href="https://www.cnblogs.com/langzou/p/5959940.html">linux中find与rm实现查找并删除目录或文件</a></p>
<p><a href="https://www.cnblogs.com/flyor/p/6411140.html">grep正则超详细-linux中grep命令的用法</a></p>
<p><a href="https://ctan.org/tex-archive/info/lshort/english/">ctan: The Not So Short Introduction to LaTeX, 2015</a></p>
<p><a href="http://mirrors.ctan.org/info/lshort/chinese/lshort-zh-cn.pdf">lshort中文版: The Not So Short Introduction to LaTeX, 2015</a></p>
<p><a href="https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-the-c-domain">latex_additional_files of Example of configuration file of latex_elements</a></p>
<p><a href="https://www.sphinx-doc.org/en/master/latex.html#the-latex-elements-configuration-setting">the-latex-elements-configuration-setting:'preamble': r'''\usepackage''',</a></p>
<p><a href="https://www.latex-project.org/help/documentation/">latex-project.org documentation</a></p>
<p><a href="https://blog.csdn.net/jueshu/article/details/90267983">Latex 控制目录显示的深度</a></p>
<p>以撰写 book 为例：</p>
<p>book 的 latex 目录默认只显示深度只能到 subsection</p>
<p>如果想要显示到 subsubsection 深度，就要设置目录显示的深度，在</p>
<pre><code>\begin{document} 前添加：
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{3}
tocdepth：设置在目录的显示的章节深度
secnumdepth：设置章节的编号深度
两者可选的设置值如下：
-1 part
0 chapter
1 section
2 subsection
3 subsubsection
4 paragraph
5 subparagraph</code></pre>
<p><a href="https://www.it610.com/article/5114750.htm">LaTeX中设置目录显示深度的一次乌龙经历</a></p>
<p><a href="https://www.cnblogs.com/saneri/p/10819348.html">Linux expect 介绍和用法</a></p>
<p><a href="https://blog.csdn.net/u013181216/article/details/83055909">Linux expect的安装与使用</a></p>
<p><a href="https://www.jianshu.com/p/2169a950368d">LaTeX：XeLaTeX+xeCJK的初学习笔记(排版我的诗)</a></p>
<p><a href="https://www.latexstudio.net/archives/2249.html">万泽:xelatex指南-在 Ubuntu 下排版专业的 pdf 文章</a></p>
<p><a href="http://static.latexstudio.net/wp-content/uploads/2014/09/xelatex-guide-book-master.zip">万泽:xelatex指南 本站下载：xelatex-guide-book-master</a></p>
<p><a href="https://github.com/a358003542/xelatex-guide-book">万泽:xelatex指南 github: https://github.com/a358003542/xelatex-guide-book</a></p>
<p><a href="https://github.com/a358003542">万泽:github.com/a358003542</a></p>
<p><a href="https://github.com/a358003542/tikz_gallery">万泽:TIKZ制图简要教程tikz_gallery</a></p>
<p><a href="https://github.com/a358003542/ximage">万泽:ximage tools</a></p>
<p><a href="https://blog.csdn.net/wc996789331/article/details/89168155">Ubantu安装ttf和otf类型的字体</a></p>
<p><a href="https://blog.csdn.net/piscesyang87/article/details/80086780">Ubuntu下安装字体</a></p>
<p>ubuntu可以与windows通用ttf格式的字体文件。</p>
<p>字体有.ttf格式（truetype font）和.otf格式（opentype font）字体，在Ubantu上安装相应的字体。</p>
<p>Ubuntu系统中的字体文件存放在下面文件夹中</p>
<pre><code>/usr/share/fonts</code></pre>
<p>首先，需要将下载的ttf字体文件复制到该目录。</p>
<p>注意操作该目录的文件需要sudo权限。</p>
<p>为了方便区分各种字体的类型，可以自定义子文件夹。</p>
<pre><code>sudo mkdir /usr/share/fonts/windows
sudo cp /home/sample/*.ttf /usr/share/fonts</code></pre>
<p>安装mkfontscale和mkfontdir命令，fc-cache命令</p>
<pre><code>使mkfontscale和mkfontdir命令正常运行
sudo apt-get install ttf-mscorefonts-installer
使fc-cache命令正常运行
sudo apt-get install fontconfig</code></pre>
<p>然后重新建立字体索引文件。</p>
<pre><code>sudo mkfontscale
sudo mkfontdir</code></pre>
<p>最后更新字体缓存。</p>
<pre><code>sudo fc-cache</code></pre>
<p>这样就可以正常使用该字体了。</p>
<p>合起来：</p>
<pre><code>sudo mkdir /usr/share/fonts/windows
sudo cp /home/sample/*.ttf /usr/share/fonts
sudo apt-get install ttf-mscorefonts-installer
sudo apt-get install fontconfig
sudo mkfontscale
sudo mkfontdir
sudo fc-cache</code></pre>
<p><a href="https://blog.csdn.net/a8039974/article/details/89845944">Linux(Ubuntu，Cent OS)环境安装mkfontscale mkfontdir命令以及中文字库</a></p>
<p><a href="http://manpages.ubuntu.com/manpages/trusty/en/man1/fc-list.1.html">http://manpages.ubuntu.com/manpages/trusty/en/man1/fc-list.1.html</a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
