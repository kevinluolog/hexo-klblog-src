---
title: pandoc
tag: 
- 自动生成
- 笔记
categories:
- 001install
toc: TRUE
---
<h1 id="pandoc">pandoc</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="install">install</h2>
<h2 id="informations">informations</h2>
<ol type="1">
<li><p><a href="https://ctan.org/pkg/beamer">beamer</a></p>
<p>slide support of latex, same author with TikZ(CLI Package)</p></li>
</ol>
<h2 id="tips">tips</h2>
<h3 id="参数">参数</h3>
<h4 id="basic">basic</h4>
<ol type="1">
<li><p>pandoc -f -t -o</p>
<pre><code>-f --from:-r --read： inputfile format
-t --to:-w --write: outputfile format
pandoc -f markdown -t latex hello.txt -o hi.tex</code></pre></li>
<li><p>–list-output-formats –list-input-formats</p>
<p>查看输入输出格式支持格式</p></li>
<li><p>–atx-headers</p>
<p>Use ATX-style headings in Markdown output. The default is to use setext-style headings for levels 1 to 2, and then ATX headings.</p></li>
<li><p>–reference-links</p></li>
</ol>
<h4 id="template">template</h4>
<ol type="1">
<li><p>-V/–variable</p>
<p>Templates contain variables, which allow for the inclusion of arbitrary information at any point in the file. They may be <strong>set at the command line using the -V/–variable option</strong>.</p>
<p><em>If a variable is not set</em>, pandoc will look for the key in the document’s metadata – which can be <strong>set using either YAML metadata blocks or with the -M/–metadata option</strong>.</p>
<p><code>-V slidy-url=slidy2</code> : 指定slidy Javascriptions 引用路径</p></li>
<li><p>pandoc -D <em>FORMAT</em></p>
<p>where FORMAT is the name of the output format. A custom template can be specified using the –template option. You can also override the system default templates for a given output format FORMAT by putting a file templates default.<em>FORMAT</em> in the user data directory (see <strong>–data-dir</strong>, above). Exceptions:</p>
<ul>
<li><p>For odt output, customize the default.opendocument template.</p></li>
<li><p>For pdf output, customize the <strong>default.latex</strong> template (or the default.context template, if you use -t context, or the default.ms template, if you use -t ms, or the default.html template, if you use -t html).</p></li>
<li><p>docx and pptx have no template (however, you can use –reference-doc to customize the output).</p>
<pre><code>pandoc slidy00.md .\templates\metadata.yml -o slidy00.tex --template .\templates\default.latex
or
pandoc slidy00.md .\templates\metadata.yml -o slidy00.tex --data-dir= .\templates</code></pre></li>
</ul></li>
</ol>
<h4 id="pdf">pdf</h4>
<ol type="1">
<li><p>–pdf-engine=xelatex</p>
<pre><code>xelatex： unicode汉字支持，新
pdflatex: 不支持汉字，旧
-t html defaults to --pdf-engine=wkhtmltopdf</code></pre></li>
<li><p>-N,–number-sections</p>
<p>Number section headings in LaTeX, ConTeXt, HTML, or EPUB output. By default, sections are not numbered.</p></li>
</ol>
<h4 id="slide">slide</h4>
<ol type="1">
<li><p>–number-offset=NUMBER[,NUMBER,…]</p>
<p>[slide list item show one by one]</p></li>
<li><p>–slide-level=NUMBER</p>
<p>Specifies that headings with the specified level create slides (for beamer, s5, slidy, slideous, dzslides).</p></li>
<li><p>–reference-doc=FILE</p>
<p>Use the specified file as a style reference in producing a docx or ODT file.</p>
<ul>
<li>Docx
<ul>
<li><p>reference.docx:</p>
<p>pandoc -o custom-reference.docx –print-default-data-file reference.docx.</p></li>
</ul></li>
<li>PowerPoint
<ul>
<li><p>reference.pptx:</p>
<p>pandoc -o custom-reference.pptx –print-default-data-file reference.pptx</p></li>
</ul></li>
</ul></li>
<li><p>title-meta, author-meta, and date-meta</p>
<ul>
<li><p>pandoc:</p>
<pre><code>% title
% author(s) (separated by semicolons)
% date

有没有的要加%空行

%
% Author

% My title
%
% June 15, 2006</code></pre></li>
</ul></li>
<li><p><code>--resource-path --extract-media</code></p>
<pre><code>pandoc -t slideous -s slidy.md -o slidous.html -i --resource-path=.:resource\pic --extract-media=resource\pic

--extract-media： 表示把链接的文件输出到指定的目录
--resource-path： 表示指定链接的相对位置，相对于工作目录，用了这个需要显示指明当前目录.。同时这个选项只能和--self-contained 或者--extract-media一起用。</code></pre></li>
</ol>
<h4 id="math-rendering-in-html">Math rendering in HTML</h4>
<ol type="1">
<li>–mathjax[=URL]</li>
<li>–mathml</li>
<li>–webtex[=URL]</li>
</ol>
<p>Convert TeX formulas to tags that link to an external script that converts formulas to images.</p>
<p>svg: <a href="https://latex.codecogs.com/svg.latex">https://latex.codecogs.com/svg.latex</a>? png: <a href="https://latex.codecogs.com/png.latex">https://latex.codecogs.com/png.latex</a>?</p>
<h2 id="command">command</h2>
<h3 id="md-web-slide-reveal.js-s5-slideous-slidy">md-&gt;web slide (reveal.js s5 slideous slidy)</h3>
<h4 id="slide-javascription-solutions">slide Javascription solutions</h4>
<table>
<thead>
<tr class="header">
<th>name</th>
<th>explaination</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>dzslides</td>
<td>(DZSlides HTML5 + JavaScript slide show)</td>
</tr>
<tr class="even">
<td>revealjs</td>
<td>(reveal.js HTML5 + JavaScript slide show)</td>
</tr>
<tr class="odd">
<td>s5</td>
<td>(S5 HTML and JavaScript slide show)</td>
</tr>
<tr class="even">
<td>slideous</td>
<td>(Slideous HTML and JavaScript slide show)</td>
</tr>
<tr class="odd">
<td>slidy</td>
<td>(Slidy HTML and JavaScript slide show)</td>
</tr>
</tbody>
</table>
<h4 id="default-url-location">default Url location</h4>
<table>
<colgroup>
<col style="width: 54%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th>name</th>
<th>explaination</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>revealjs-url</td>
<td>base URL for reveal.js (defaults to reveal.js)</td>
</tr>
<tr class="even">
<td>s5-url</td>
<td>base URL for S5 (defaults to s5/default)</td>
</tr>
<tr class="odd">
<td>slideous-url</td>
<td>base URL for Slideous (defaults to slideous)</td>
</tr>
<tr class="even">
<td>slidy-url</td>
<td>base URL for Slidy (defaults to <a href="https://www.w3.org/Talks/Tools">https://www.w3.org/Talks/Tools</a> /Slidy2)</td>
</tr>
</tbody>
</table>
<h4 id="web-slide-commad">web slide commad:</h4>
<ol type="1">
<li><p>md-&gt;dzslides</p>
<pre><code>pandoc -t dzslides -s slidy.md -o dzslides.html -i --slide-level=2 --resource-path=.:resource\pic --extract-media=resource\pic</code></pre></li>
<li><p>md-&gt;revealjs:</p>
<pre><code>pandoc -t revealjs -s slidy.md -o revealjs.html -i --slide-level=2 --resource-path=.:resource\pic --extract-media=resource\pic -V revealjs-url=reveal.js</code></pre></li>
<li><p>md-&gt;s5:</p>
<pre><code>pandoc -t s5 -s slidy.md -o s5.html -i --slide-level=2 --resource-path=.:resource\pic --extract-media=resource\pic -V s5-url=s5\ui\default</code></pre></li>
<li><p>md-&gt;slideous:</p>
<pre><code>pandoc -t slideous -s slidy.md -o slideous.html -i --slide-level=1 --resource-path=.:resource\pic --extract-media=resource\pic -V s5-url=slideous</code></pre></li>
<li><p>md-&gt;slidy:</p>
<pre><code>pandoc -t slidy -s slidy.md -o slidy.html -i --slide-level=2 --resource-path=.:resource\pic --extract-media=resource\pic -V slidy-url=slidy2</code></pre></li>
</ol>
<h4 id="command-md-pdf">command (md-&gt;pdf):</h4>
<ol type="1">
<li><p>xelatex 终稿</p>
<p>配合两个文件：</p>
<ul>
<li><p>metadata.yaml</p>
<p>元变量 可用 -V 在命令行输入</p>
<p>注意: 要加入 --metadata-file 或 -M 引用metadata.yaml, pandoc帮助文档的案例是.md 的文件不用加，但是实践证明，在.rst转成.pdf时，必须要加上，不然直接加入了文档中，同时因引用不到汉字字体定义CJKmainfont: "SimSun"，会报错汉字找不到。所以统一加上。</p></li>
<li><p>default.latex</p>
<p>修改了latex的模板，主要是为了框线链接</p></li>
<li><p>分两步，-&gt;.tex -&gt;.pdf</p>
<pre><code>pandoc slidy00.md --metadata-file .\templates\metadata.yaml -o slidy00.tex -s -N --toc --toc-depth=3 --template .\templates\default.latex

xelatex slidy00.tex</code></pre></li>
<li><p>一步头</p>
<pre><code>pandoc slidy00.md --metadata-file .\templates\metadata.yaml --pdf-engine=xelatex -o slidy00.pdf -s -N --toc --toc-depth=3 --data-dir=.\templates</code></pre></li>
</ul></li>
<li><p>xelatex</p>
<pre><code>pandoc slidy.md -o pdf.pdf --pdf-engine=xelatex -i</code></pre>
<ul>
<li><p>xelatex可以支持中文，同时缺省是支持目录的。</p></li>
<li><p>所以不用加-toc,–table-of-contents,</p></li>
<li><p>-i,表示目录加上数字</p>
<pre><code>pandoc slidy.md -o pdf.tex -s
xelatex pdf.tex -o pdf1.pdf -V CJKmainfont=xecjk</code></pre></li>
</ul></li>
<li><p>参考网上xelatex</p>
<p><a href="https://www.jianshu.com/p/dcc2f95cc086">参考链接</a></p>
<pre><code>pandoc --pdf-engine=xelatex --template=D:\tools\Pandoc\pm-template.latex test.md -o test.pdf</code></pre>
<p><a href="https://github.com/tzengyuxio/pages/blob/gh-pages/pandoc/pm-template.latex">Tzeng Yuxio的支持中文latex模板文件</a></p></li>
</ol>
<h4 id="command-md-html">command (md-&gt;html)</h4>
<ol type="1">
<li><p>my</p></li>
<li><p>参考网上</p>
<pre><code>pandoc -s -f gfm -t html5 --css=css/markdownPad-github.css test.md -o test.html</code></pre>
<p><a href="https://github.com/nicolashery/markdownpad-github">markdownPad-github.css</a></p>
<p>自己指定CSS显示模板</p></li>
</ol>
<h2 id="faq">faq</h2>
<h3 id="pandoc生成slide时怎么用本地相对路径嵌入javascription代码-s-stand-alone">pandoc生成SLIDE时，怎么用本地相对路径嵌入javascription代码？-s –stand-alone</h3>
<ol type="1">
<li><p>To produce an HTML/JavaScript slide show, simply type</p>
<p>pandoc -t FORMAT -s habits.txt -o habits.html</p>
<p>where FORMAT is either s5, slidy, slideous, dzslides, or revealjs.</p>
<p>For Slidy, Slideous, reveal.js, and S5, the file produced by pandoc with the -s/–standalone option embeds a link to JavaScript and CSS files, which are assumed to be available at the relative path s5/default (for S5), slideous (for Slideous), reveal.js (for reveal.js), or at the Slidy website at w3.org (for Slidy).</p></li>
<li><p>These paths can be changed by setting variables: the slidy-url, slideous-url, revealjs-url, or s5-url</p>
<pre><code>变量前面要加上 -V
-V slidy-url=slidy2 : 指定slidy Javascriptions 引用路径</code></pre></li>
<li><p>For DZSlides, the (relatively short) JavaScript and CSS are included in the file by default.</p></li>
<li><p>With all HTML slide formats, the <code>--self-contained</code> option can be used to produce a single file that contains all of the data necessary to display the slide show, including linked scripts, stylesheets, images, and videos.</p></li>
</ol>
<h3 id="怎么直接生成网页slide">怎么直接生成网页SLIDE?</h3>
<pre><code>pandoc -t FORMAT -s habits.txt -o habits.html
-i : incremental 指定逐步显示列表项
-slide--level: 指定第几级Header开始分slide页面
-s --stand-alone: 相对目录（slidy 除外），并包头部</code></pre>
<h3 id="怎么把javascriptcss链接资源定位到指定目录">怎么把javascript/css链接资源定位到指定目录</h3>
<p>slidy-url, slideous-url, revealjs-url, or s5-url variables</p>
<h3 id="怎么把图片链接资源定位到指定目录">怎么把图片链接资源定位到指定目录</h3>
<pre><code>pandoc -t slideous -s slidy.md -o slidous.html -i --resource-path=.:resource\pic --extract-media=resource\pic</code></pre>
<h3 id="怎么直接生成pdf形式的ppt--t-beamer">怎么直接生成pdf形式的PPT? -t beamer</h3>
<p>To produce a PDF slide show using beamer, type</p>
<pre><code>pandoc -t beamer habits.txt -o habits.pdf</code></pre>
<h3 id="怎么直接生成docx文件">怎么直接生成DOCX文件？</h3>
<pre><code>pandoc slidy.md -o slide.docx --toc --toc-depth=6 -N
--toc, --table-of-contents
--toc-depth=NUMBER
--resource-path=SEARCHPATH : --resource-path=.:test will search the working directory and the test subdirectory</code></pre>
<h3 id="怎么指定并修改pandoc用的pptxdocx的模板文件">怎么指定并修改pandoc用的pptx/docX的模板文件？</h3>
<h3 id="为何latex的book类型中目录及chapter前自动插入空白页面">为何LaTex的book类型中，目录及chapter前自动插入空白页面?</h3>
<ul>
<li><a href="https://blog.csdn.net/Sarah_LZ/article/details/90737631">LaTex的book类型中，目录及chapter前自动插入空白页面</a>
<ol type="1">
<li><p>如题，在book中开新的chapter，前面总是自动留空白页面，而且封面与目录之间也总是多出一张空白页，怎么设置页码都不会消除.</p>
<p>原因说明</p>
<p>在book类中，默认目录与每一章都从奇数页码开始，如果上一章的结束刚好是奇数页码，就默认在后面补充一张空白页作为偶数页，使得下一章仍从奇数页码开始. 这是book的排版规范.</p>
<p>此外documentclass中有一对选项openright和openany, book类默认为openright模式，这也是为什么book类的奇数页面与偶数页面的左右页边距刚好相反的原因.</p></li>
<li><p>如何解决book中自动留白的问题</p>
<div class="line-block">还有一对选项：oneside和twoside，book类文档默认为twoside模式：双面打印模式，在这种模式下，默认新章节从奇数页码开始打印，所以会自动留白, 我们只需要在documentclass的选项中指定book为oneside的模式，就可以消除留白. 如下：<br />
’</div></li>
</ol></li>
</ul>
<h3 id="拼接pdf">拼接PDF</h3>
<p>其实用tex就可以合并pdf, 而且这个方法是跨平台的,无论widows, linux, Mac X, 只要有装了tex和宏包pdfpages,这个宏包一般的tex发行版默认都包含了, texlive就已经有了. 代码:</p>
<pre><code>//documentclass[a4paper]{article}
//usepackage{pdfpages}
//begin{document}
//includepdfmerge{1.pdf,1-3}
//includepdfmerge{2.pdf,5-13}
//end{document}
其中命令//includepdfmerge{1.pdf,1-3}就是导入1.pdf的1至3页.
命令//includepdfmerge{2.pdf,5-13}就是导入2.pdf的5至13页.</code></pre>
<h3 id="md-pdfbook时怎么添加章节号-markdown语法解决">md-pdfbook时，怎么添加章节号？ markdown语法解决</h3>
<ul>
<li><p><a href="https://blog.csdn.net/F8qG7f9YD02Pe/article/details/83629436">用 Pandoc 生成一篇调研论文 | Linux 中国</a></p>
<pre><code>Implementation 这个标题使用了 H1 并且声明了一个 {#sec:implementation} 的标签，这是作者用于引用该章节的标签。要想引用一个章节，输入 @符号并跟上对应章节标签，使用方括号括起来即可： [@sec:implementation]</code></pre></li>
</ul>
<h2 id="参考">参考</h2>
<h3 id="参考文章">参考文章</h3>
<ul>
<li><a href="https://www.jianshu.com/p/be291ac296c3">Pandoc使用技巧</a></li>
<li><a href="https://www.jianshu.com/p/a97b4a9f6d5b">【转】RStudio+Markdown+Pandoc的中文配置</a></li>
<li><a href="https://www.jianshu.com/p/0e0abc6feeb3">Pandoc中使用Reveal.js制作幻灯片</a></li>
<li><a href="https://www.jianshu.com/p/dcc2f95cc086">Pandoc的使用和遇到的问题</a></li>
</ul>
<h2 id="misc">MISC</h2>
<h3 id="pandoc-基本命令">pandoc 基本命令</h3>
<pre><code>-f: 指定输入格式，比如docx、epub、md、html等
-t: 指定输出格式，比如docx、epub、md、html等
-o: 输出到file文件
--verbost: 显示详细调试信息
--log： 指定输出日志信息

--list-input-formats：列出支持的输入格式。
--list-output-formats：列出支持的输出格式。
--list-extensions：列表支持Markdown扩展，后面跟一个+或者-说明是否在pandoc的Markdown中默认启用。
--list-highlight-languages:列出语法突出显示支持的语言。
--list-highlight-styles:列出支持语法高亮的样式。。
-v: 打印版本信息。
-h：显示语法帮助</code></pre>
<h3 id="pandoc帮助文档摘录">pandoc帮助文档摘录</h3>
<h4 id="待处理摘录">待处理摘录</h4>
<pre><code>package: xcolor hypreff 用来设置TOC颜色 link外框线</code></pre>
<h4 id="heading-identifiers">Heading identifiers</h4>
<pre><code>- Extension: header_attributes
    {#identifier .class .class key=value key=value}
- example: will all be assigned the identifier foo:
    # My heading {#foo}
    ## My heading ##    {#foo}
    My other heading   {#foo}

- Headings with the class unnumbered will not be numbered, even if --number-sections is specified. 
    # My heading {-}
    is just the same as
    # My heading {.unnumbered}
Like regular reference links, these references are case-insensitive.

-Extension: implicit_header_references

- My heading {-}
is just the same as
- My heading {.unnumbered}
Like regular reference links, these references are case-insensitive.

Extension: implicit_header_references</code></pre>
<h3 id="writage是一款word插件">Writage是一款word插件</h3>
<p><a href="http://www.writage.com/">下载网址为</a> 支持markdown与word互相转换</p>
<h2 id="tips-1">tips</h2>
<h3 id="列出电脑中已安装字体">列出电脑中已安装字体</h3>
<p>列出所有的中文字体的字体族名，要列出日文和韩文 zh改成 ja或 ko。</p>
<pre><code>fc-list -f &quot;%{family}\n&quot; :lang=zh &gt; zhfont.txt</code></pre>
<h3 id="文档内部跳转">文档内部跳转</h3>
<ol type="1">
<li><p>先定义一个锚(id)</p>
<pre><code>&lt;span id=&quot;jump&quot;&gt;Hello World&lt;/span&gt;</code></pre></li>
<li><p>然后使用markdown的语法:</p>
<pre><code>[XXXX](#jump)</code></pre></li>
</ol>
<h2 id="转换时发现的注意事项">转换时发现的注意事项</h2>
<h3 id="rst2md">rst2md</h3>
<h4 id="pandoc不支持的rst部分功能">PANDOC不支持的RST部分功能</h4>
<h5 id="右下划线不能引用链接inline链接title除外">右下划线不能引用链接inline链接，title除外</h5>
<p>:</p>
<pre><code>`Hexo博客从搭建部署到SEO优化等详细教程 &lt;https://www.jianshu.com/p/efaf72aab32e&gt;`_

Hexo博客从搭建部署到SEO优化等详细教程_
这样不能引用</code></pre>
<h3 id="md2slide">md2slide</h3>
<ul>
<li><p>image引用路径问题</p>
<p>html形式的slide可以正反斜杠都可以,因最后输出到html标识中了，相对路径也可。 beamer形式的pdf slide中需要双反斜杠全路径(windows下)，相对路径不行。</p>
<pre><code>![image](H:\\tmp_H\\001.work\\002git\\000GT\\001work\\resource\\image\\layoff.jpeg)</code></pre></li>
</ul>
