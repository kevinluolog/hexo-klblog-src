---
title: LaTex
tag: 
- 自动生成
- 笔记
categories:
- 001install
toc: TRUE
---
<h1 id="memo-of-latex">memo of latex</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="安装方法">安装方法</h2>
<h3 id="tex">tex</h3>
<h4 id="mitex">MiTex</h4>
<ul>
<li>CTEX 指的是CTEX 中文套装 Windows下则有MiKTEX 和fpTEX</li>
<li>MiKTeX 添加中文支持, 点开 Package Manager admin), 安装 CJK 和 CJK-fonts 即可</li>
</ul>
<h4 id="texlive">texlive</h4>
<h3 id="ide">IDE</h3>
<h4 id="texmaker">TeXmaker</h4>
<pre><code>TeXmaker设置

打开TexMaker-&gt;选项-&gt;配置TexMaker-&gt;命令，配置前两项如下：(如果texlive的/bin/win32/路径已经在PATH中了，就缺省就可以了)

latex: &quot;C:/texlive/2016/bin/win32/latex.exe&quot; -interaction=nonstopmode %.tex

Dvipm: &quot;C:/texlive/2016/bin/win32/pdflatex.exe&quot; -interacti on=nonstopmode %.tex</code></pre>
<h4 id="texstudio">TeXstudio</h4>
<h4 id="texworks">TeXworks</h4>
<p>这是texlive 安装自带</p>
<h2 id="sublimetext配置texlive编辑和编译环境">SublimeText配置TexLive编辑和编译环境</h2>
<ul>
<li><p><a href="htt://blog.csdn.net/meiqi0538/article/details/82915406">Tex-Live安装及SublimeText 配置Tex-Live编辑和编译环境</a></p>
<ol type="1">
<li>LatexTools插件</li>
<li>SumatraPDF配置</li>
</ol></li>
<li><p><a href="https://www.sumatrapdfreader.org/%20%20download-free-pdf-viewer.html">下载路径</a></p></li>
<li><p>【设置】-》【选项】</p>
<p>"C:CommonToolsSublime Text 3Sublime Text 3sublime_text.exe" "%f:%l"</p></li>
</ul>
<pre><code>「LaTeXTools.sublime-settings」做以下配置：
&quot;windows&quot;:{
    &quot;texpath&quot; : &quot;C:\\commontools\\texlive2018\\texlive\\2018\\bin\\win32;$PATH&quot;,
&quot;distro&quot; : &quot;texlive&quot;
&quot;sumatra&quot;: &quot;C:\\commontools\\texlive2018\\sumatrapdf\\sumatrapdf.exe&quot;,
}
    &quot;builder&quot;: &quot;simple&quot;
}</code></pre>
<ul>
<li>测试test.tex</li>
</ul>
<blockquote>
<pre><code>\documentclass`UTF8]{ctexart}
\begin{document}
This is the context of the article.
这就是文章的所有内容。
\end{document}</code></pre>
</blockquote>
<h2 id="cli绘图工具">CLI绘图工具</h2>
<h3 id="tikz和pgf">TikZ和PGF</h3>
<h4 id="tikz学习">TiKZ学习</h4>
<p>TikZ和PGF是一种用在TeX上的*<em>CLI绘图工具</em>*。 CLI和GUI是两种常见的绘图方式。</p>
<p>CLI: Commad Line Interface</p>
<blockquote>
<p>是所想即所得（WYTIWYG）的，通过类编程的思想实现绘图，这种方式往往能够生成精确控制的函数图，常见的有PostScript、PGF、Asymptote、PSTricks等。</p>
</blockquote>
<p>GUI: Graphic User Interface</p>
<blockquote>
<p>后者则是所见即所得（WYSIWYG）的，常见的有CorelDraw、Illustrator、Photoshop、GIMP、Office、Visio等。</p>
</blockquote>
<p>TikZ和PGF的关系: classifier</p>
<blockquote>
<p>TikZ和PGF的关系则是高层和底层的关系，简单说来，TikZ基于PGF，它可以帮助我们用更易于理解的方式创建复杂的图形。</p>
</blockquote>
<p>PGF: 全名</p>
<blockquote>
<p>PGF的全名是“portable graphics format”，或者“pretty, good, functional”</p>
</blockquote>
<p>TikZ : 全名</p>
<blockquote>
<p>TikZ的命名更有趣，采用的是递归式的取名：“TikZ ist kein Zeichenprogramm”(TikZ is not a drawing program)。 类似的取名最出名的恐怕就是GNU（GNU is Not Unix）了。</p>
</blockquote>
<ol type="1">
<li><p><a href="http://www.texample.net/tikz/">TikZ的官网：内含很多示例代码</a></p></li>
<li><p><a href="https://www.overleaf.com">LateX在线编辑工具</a></p></li>
<li><p><a href="http://cremeronline.com/LaTeX/minimaltikz.pdf">TikZ快速入门文档</a></p></li>
<li><p><a href="https://www.overleaf.com/learn/latex/LaTeX_Graphics_using_TikZ:_A_Tutorial_for_Beginners_(Part_1)%E2%80%94Basic_Drawing">LaTeX Graphics using TikZ: A Tutorial p1</a></p></li>
<li><p><a href="http://blog.sina.com.cn/s/blog_97d042500101g4jk.html">TikZ绘图学习笔记</a> LaTeX中支持PGF(Portable Graphics Format/Pretty,Good,Functional).PGF能够画出精确的图像，但因为非所见即所得，所以学习起来也有一定难度。</p>
<p>在*<em>TeX中绘制图形有很多方法，例如picture环境、pstricks宏包、xypic宏包、dratex宏包、metapost宏包等</em>*。PGF也是其中一种。PGF的结构包括系统层、基础层和前段层。在通常情况下，用户只会接触到如TikZ的前端层。TikZ是PGF的扩展，由同一个作者开发。</p></li>
<li><p><a href="https://www.cnblogs.com/tsingke/p/6649800.html">Latex--TikZ和PGF--高级文本绘图，思维绘图，想到--得到！</a> 这个网址收集了比较齐全的学习网址</p></li>
<li><p><a href="https://www.ctan.org/pkg/pgf">tikz &amp; pgf manual - CTAN: Package pgf</a> 用户手册，源码 <a href="https://github.com/pgf-tikz/pgf">gitHub源码仓库</a></p></li>
</ol>
<h4 id="tikz绘图">TiKZ绘图</h4>
<ol type="1">
<li>使用 LaTeX 宏包 TikZ 来绘制矢量流程图
<ul>
<li><a href="https://blog.csdn.net/tuzixini/article/details/72957211">Latex 绘制流程图</a></li>
<li><a href="https://blog.csdn.net/weixin_44420912/article/details/86418033">LaTeX中TikZ绘图备忘一</a> 编译器结构图</li>
<li><a href="https://blog.csdn.net/sunwukong54/article/details/28292097">latex tikz使用总结</a></li>
</ul></li>
</ol>
<h4 id="程序语句使用绘图">程序语句使用绘图</h4>
<ol>
<li><a href="https://blog.csdn.net/rumswell/article/details/37962003">LaTex中使用循环连续绘图的例子</a></li>
</ol>
<pre><code>%%====================================================
\begin{frame}[fragile]
    由 $3$ 个人群可以构成$2^3 = 8$张 \remph{人际关系图},只需分析如下 \remph{$4$}张图即可:\\[12pt] %
    \setcounter{maincounter}{0}%设置计数器的值
    %每次增加一个值用\stepcounter{maincounter}
    \begin{tikzpicture}[line width = 1.0pt]
    \pgfmathsetmacro{\h}{1.4}   %两点的水平间距
    \pgfmathsetmacro{\v}{1.4}   %两点的垂直间距
    % %------------------------------------------------------
    \foreach \r/\c in {0/0,2/0,4/0,6/0}  
    {    
        \stepcounter{maincounter} %增加计数器的值
        \setcounter{secondcounter}{0}%设置计数器的值
        %定义原点坐标
        \coordinate  (P0) at (\r,\c);    

        \path (P0)  node[circle,fill=red,inner sep=2pt](a){$a$};  
        \path (a)+(\h,0 )  node[circle,fill=red,inner sep=2pt](b){$b$}; 
        \path ($ (a)!0.5! (b) $)+(0,\v)   node[circle,fill=red,inner sep=2pt](c){$c$}; 
        \path ($ (a)!0.5! (b) $)+(0,-0.5)   node (T){ $\left( \themaincounter \right) $}; 
        %画直线  
        \foreach \from/\to in {a/b,a/c,b/c}  
        {
            \stepcounter{secondcounter} %增加计数器的值
            \ifthenelse{\value{secondcounter}&lt;\value{maincounter}}{\draw[dashed] (\from) -- (\to)  ;}{\draw[blue] (\from) -- (\to)  ;}
        }

    }
    \end{tikzpicture}
\end{frame}</code></pre>
<ol start="3" type="1">
<li><p><a href="https://blog.csdn.net/lishoubox/article/details/7316224">ifthen宏包使用——条件判断与循环语句</a></p>
<blockquote>
<p>ifthenelse{判断条件}{肯定结构}{否定结构} whiledo{判断条件}{while语句}</p>
</blockquote></li>
</ol>
<pre><code>\documentclass{article}
\usepackage{ifthen}
\begin{document}

\newcommand{\oddeven}[1]{Number #1 is %
\ifthenelse{\isodd{#1}}{odd}{even}  }
\oddeven{4}.\\ \oddeven{5}

\newcounter{MYctr}
\whiledo{\value{MYctr}&lt;5}%
{你会喜欢用~LaTeX~的。%
\stepcounter{MYctr}}

\end{document}</code></pre>
<h3 id="pgfplots绘图包">pgfplots绘图包</h3>
<p><a href="htt://blog.csdn.net/stereohomology/article/details/24266409">在LaTeX中使用强大的pgfplots绘图包</a></p>
<h3 id="pstricks绘图">PSTricks绘图</h3>
<h4 id="使用pstricks绘制精致的流程图">使用PSTricks绘制精致的流程图</h4>
<p><a href="http://blog.sina.com.cn/s/blog_5e16f1770102e77g.html">使用PSTricks绘制精致的流程图</a> 一个好用的package地址在http://texnik.dante.de/tex/generic/pstricks-add/ 大家也可以下载替换系统的 texlive/2011/texmf-local/tex/generic/pstricks-add/pstricks-add.tex 文件，或者就放在自己编码的文件目录下也可。 我们可以利用已有的命令绘制出精致的流程图</p>
<p>TIPS ===</p>
<h3 id="misc">MISC</h3>
<ol type="1">
<li>参考文献可以搜bibtex，</li>
<li>制作幻灯片可以搜beamer。</li>
</ol>
<h2 id="faq">FAQ</h2>
<h3 id="pdflatex和xelatex有什么区别">PDFLaTeX和XeLaTeX有什么区别</h3>
<dl>
<dt>区别: pdflatex and xelatex</dt>
<dd><p>pdfLaTeX是比较原始的版本，对Unicode的支持不是很好，所以显示汉字需要使用CJK宏包。它不支持操作系统的truetype字体(*.ttf)，只能使用type1字体。优点是支持的宏包比较多，有些老一点的宏包必须用pdfLaTeX来编译。XeLaTeX是新的Unicode版本，内建支持Unicode(UTF-8)，自然也包括汉字在内，而且可以调用操作系统的truetype字体。如果你的文档有汉字，那么推荐用XeLaTeX。缺点是不支持某一些宏包。</p>
</dd>
</dl>
<h3 id="latex-与-tex-有什么本质区别">LaTeX 与 TeX 有什么本质区别</h3>
<p>TeX是排版引擎，是给机器下指令的。它有好多种具体的实现。 LaTeX是宏包，方便用户调用TeX。 另外，比如XeTeX同样也是排版引擎，是TeX的一种实现，增加了对万国码的支持。 XeLaTeX是宏包，是指使用宏包LaTeX调用排版引擎XeTeX。</p>
