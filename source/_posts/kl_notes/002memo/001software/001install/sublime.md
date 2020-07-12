---
title: sublime
tag: 
- 自动生成
- 001install
categories:
- 001install
toc: TRUE
---
<h1 id="sublime">sublime</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="basic-information">basic information</h2>
<h2 id="website">website</h2>
<ul>
<li>main page</li>
<li>package get</li>
<li>help</li>
<li>tutorial</li>
</ul>
<h2 id="install-components">install components</h2>
<ol type="1">
<li>portable sublime</li>
<li>package control install</li>
<li>sublimeGit</li>
</ol>
<h3 id="package-control-install">package control install</h3>
<p>portable sublime 缺省没有安装，可2个方法安装</p>
<ol type="1">
<li><p>tools-package control install</p>
<p>装完此菜单消失，preferences出现-&gt;package setting; -&gt;package control</p></li>
<li><p>2种另外的方法，自动和手动</p>
<p><a href="https://packagecontrol.io/installation">页面查看2种另外的方法</a> 在页面查看2种另外的方法，自动和手动</p></li>
</ol>
<h4 id="如果想要删除插件">如果想要删除插件，</h4>
<pre><code>Ctrl+Shift+P调出命令面板，输入remove，调出Remove Package选项并回车，选择要删除的插件即可，当然，更新插件，upgrade \003work\002memo\001software\001install，通过简单的几个命令就可以方便的管理我们的插件了</code></pre>
<h4 id="用package-control安装插件的方法">用Package Control安装插件的方法</h4>
<pre><code>按下Ctrl+Shift+P调出命令面板
输入install 调出 Install Package 选项并回车，然后在列表中选中要安装的插件。
不爽的是，有的网络环境可能会不允许访问陌生的网络环境从而设置一道防火墙，而Sublime Text3貌似无法设置代理，可能就获取不到安装包列表了。</code></pre>
<h3 id="sublimegit-package-install">sublimegit package install</h3>
<pre><code>tools-command palette ctl+shift+p
pci package control install
等待载入package information,然后在命令行输入sublimeGit
安装完后，在
preference-&gt;package Settings-&gt; 此处出现安装的sublimeGit
同时在
preference-&gt;package settings-&gt; package control -&gt; user setting 中可以看到已经增加选项</code></pre>
<h4 id="sumlimegit-usage用法">sumlimeGit usage用法</h4>
<p><a href="https://sublimegit.readthedocs.io/en/latest/">https://sublimegit.readthedocs.io/en/latest/</a></p>
<ul>
<li>【下面的有些问题，看readthedocs就行了】</li>
</ul>
<p><a href="https://docs.sublimegit.net/tutorial.html">full tutorial, go to</a></p>
<p><a href="https://sublimegit.readthedocs.io/en/latest/tutorial.html">https://sublimegit.readthedocs.io/en/latest/tutorial.html</a></p>
<p><a href="https://docs.sublimegit.net/quickstart.html">how to get set up</a></p>
<h2 id="有用的插件">有用的插件</h2>
<p><a href="https://blog.csdn.net/enjoyyl/article/details/50057491#%20_90">超级文本编辑器Sublime Text3</a></p>
<h3 id="converttoutf8">ConvertToUTF8</h3>
<p>比上面的那个要方便，直接在菜单栏中可以转了，专为中文设计，妈妈再也不通担心中文乱码问题了</p>
<h3 id="markdown-也可以用简书直接编辑查看">markdown, 也可以用简书直接编辑查看</h3>
<h4 id="markdownediting">MarkdownEditing</h4>
<h4 id="omnimarkuppreviewer">OmniMarkupPreviewer</h4>
<h5 id="toc-render-preview支持">TOC render Preview支持</h5>
<p>右键menu preview markdown in browser, export/copy markdown as html</p>
<pre><code>1. 如果你发现它不支持markdown目录的预览生成，那么不是它不行，是你没配置。
   当然首先是装markdwon TOC插件

2. 复制Preferences -&gt; Package Settings -&gt; OmniMarkupPreviewer -&gt; Settings - Default 中的内容到Settings - Users中，

3. 并在 // MarkdownRenderer options区域，即
“renderer_options-MarkdownRenderer”: 中添加&quot;toc&quot;，代码如下
        &quot;extensions&quot;: [&quot;tables&quot;, &quot;strikeout&quot;, &quot;fenced_code&quot;, &quot;codehilite&quot;, &quot;toc&quot;]

4. 然后通过Ctrl+Alt+O快捷键生成HTML预览，或者Ctrl+Alt+X导出。</code></pre>
<h5 id="omnimarkuppreviewer中支持latex公式显示">OmniMarkupPreviewer中支持LaTeX公式显示：</h5>
<ol type="1">
<li>设置。</li>
</ol>
<pre><code>公式的渲染使用了MathJax库，所以需要在OmniMarkupPreviewer的设置中，将&quot;mathjax_enabled&quot;设置为“true”。之后MathJax会在后端自动下载。</code></pre>
<ol start="2" type="1">
<li>可能是网速的原因，MathJax库下载很慢，所以可以选择手动安装。</li>
</ol>
<pre><code>[下载MathJax](https://github.com/downloads/timonwong/OmniMarkupPreviewer/mathjax.zip)

    然后解压到下面的目录里：Sublime Text 2\\003work\002memo\001software\001install\OmniMarkupPreviewer\public
    之后在目录“Sublime Text 2\\003work\002memo\001software\001install\OmniMarkupPreviewer”中创建一个空文件MATHJAX.DOWNLOADED这样子MathJax就安装成功了。
    测试，输入下面内容：
    This expression 
    $\sqrt{3x-1}+(1+x)^2$ is an example of a $\LaTeX$ inline equation.he Lorenz Equations:
    $$\begin{aligned}\dot{x} &amp; = \sigma(y-x) \\\dot{y} &amp; = \rho x - y - xz \\\dot{z} &amp; = -\beta z + xy\end{aligned}$$</code></pre>
<ol start="3" type="1">
<li><p>使用参考网址</p>
<ul>
<li><a href="https://www.jianshu.com/p/4d38b0bee395">用MathJax插入数学公式</a>
<ul>
<li><a href="http://www.forkosh.com/mathtextutorial.html">LaTex 完整教程</a></li>
<li><a href="http://mirrors.ctan.org/info/symbols/math/maths-symbols.pdf">MathJax 支持的数学符号表</a></li>
<li><a href="https://kerzol.github.io/markdown-mathjax/editor.html">在线 Markdown MathJax 编辑器</a></li>
</ul></li>
</ul>
<ol type="1">
<li>行间公式:使用 $$ 来作为公式的左右边界;</li>
<li>行内公式:使用 $ 号作为公式的左右边界;</li>
</ol></li>
</ol>
<p>在Sublime Text 3中使用命令：</p>
<pre><code>Ctrl+Alt+O：在浏览器中预览
Ctrl+Alt+X：输出为HTML文件
Ctrl+Alt+C：复制为HTML文件</code></pre>
<h4 id="markdown-extended">Markdown Extended</h4>
<h4 id="markdownlivepreview-altm-在sublime启动并列窗口实时查看结果">MarkdownLivePreview [alt+m 在sublime启动并列窗口,实时查看结果]</h4>
<h4 id="markdowntoc">MarkdownTOC</h4>
<p>Sublime Text 3 plugin for generating a Table of Contents (TOC) in a Markdown document.</p>
<ul>
<li><a href="https://github.com/naokazuterada/MarkdownTOC#%20features">Features</a></li>
<li><a href="https://github.com/naokazuterada/MarkdownTOC#%20usage">Usage</a></li>
</ul>
<h3 id="restructuredtext-improved">reStructuredText Improved</h3>
<p>Headings and terms (from definition lists) are available as symbols, so you can use CTRL-R to jump to them.</p>
<h3 id="restructured-text-rst-snippets-rst-completion-用法">Restructured Text (RST) Snippets rst-completion 用法</h3>
<p>装完后preferences-package setting中的名字为，sublime-rst-completion</p>
<p><a href="https://packagecontrol.io/\003work\002memo\001software\001install/Restructured%20Text%20(RST)%20Snippets">Restructured Text (RST) Snippets</a></p>
<ul>
<li><p>用法链接</p>
<ul>
<li><a href="https://packagecontrol.io/packages/Restructured%20Text%20(RST)%20Snippets">packagecontrol.io/packages/Restructured Text (RST) Snippets</a></li>
<li><a href="H:\tmp_H\001.work\002git\000study\000misc\sublime-rst-completion\README.rst">本地README</a></li>
<li><a href="https://github.com/kevinluolog/sublime-rst-completion/blob/master/README.rst">Git-README</a></li>
</ul></li>
<li><p>快捷键</p>
<ul>
<li>magic table
<ol type="1">
<li>grid table <code>ctrl+t, enter</code>
<ol type="1">
<li>keep the column width fixed, <code>ctrl+t, r</code> (<code>super+shift+t, r</code> in Mac)</li>
<li>merge simple cells: <code>ctrl+t, down</code> <code>ctrl+t, up</code></li>
</ol></li>
<li>simple table <code>ctrl+t, s</code></li>
</ol></li>
<li>Adjust header level： <code>ctrl+-</code> | <code>ctrl+keypad-</code></li>
<li>补齐: <code>tab</code></li>
<li>jump between headers: <code>alt+down</code> | <code>alt+up</code></li>
<li>add new footnote: <code>alt+shift+f</code></li>
<li>go back to the reference with <code>shift+up</code></li>
</ul></li>
<li><p>如何消除已经生成的表格格式</p>
<p>进行两次替换动作就可以了。</p>
<pre><code>[-+=\|]
\n\n</code></pre></li>
</ul>
<p>-usage snippets</p>
<table>
<thead>
<tr class="header">
<th>shortcut</th>
<th>result</th>
<th>key binding</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>h1</code> <code>h2</code> <code>h3</code></p></td>
<td><p>Header level 1 Header level 2 Header level 3</p></td>
<td><p>see <code>Headers</code>_</p></td>
</tr>
<tr class="even">
<td><code>e</code></td>
<td><p>emphasis</p></td>
<td><p><code>ctrlalti</code> (<code>supershifti</code> on Mac)</p></td>
</tr>
<tr class="odd">
<td><code>se</code></td>
<td>strong emphasis</td>
<td><code>ctrlaltb</code></td>
</tr>
<tr class="even">
<td></td>
<td>(bold)</td>
<td>(<code>supershiftb</code> on Mac)</td>
</tr>
<tr class="odd">
<td><code>lit</code></td>
<td>literal text</td>
<td><code>ctrlaltk</code></td>
</tr>
<tr class="even">
<td><code>literal</code></td>
<td>(inline code)</td>
<td>(<code>supershiftk</code> on Mac)</td>
</tr>
<tr class="odd">
<td><p><code>list</code> <code>listn</code> <code>listan</code> <code>def</code> <code>code</code> <code>source</code> <code>img</code> <code>fig</code> <code>table</code> <code>link</code> <code>linki</code> <code>fn</code></p></td>
<td><p>unordered list ordered list auto ordered list term definition codeblock (sphinx) preformatted (<code>::</code> block) image figure simple table refered hyperlink embeded hyperlink autonumbered</p></td>
<td><p>see <code>Smart Lists</code>_</p></td>
</tr>
<tr class="even">
<td><code>cite</code></td>
<td>footnote or cite</td>
<td>Footnotes</td>
</tr>
<tr class="odd">
<td><code>quote</code></td>
<td>Quotation (<code>epigraph</code>)</td>
<td>Tables</td>
</tr>
</tbody>
</table>
<p>接上：</p>
<p>shortcut</p>
<p><code>attention</code> <code>caution</code> <code>danger</code> <code>error</code> <code>hint</code> <code>important</code> <code>note</code> <code>tip</code> <code>warning</code></p>
<p>-编译Python项目文档</p>
<p>Python的项目文档，大都基于 reStructuredText 撰写， Sphinx 发布，如何在 Sublime 中，通过按 Ctrl + B 直接编译工程呢？很简单，点击 Tools –&gt; Build System –&gt; New Build System ，输入</p>
<pre><code>{
    &quot;shell_cmd&quot;: &quot;make html&quot;
}</code></pre>
<p>保存，打开你工程的 Makefile 文件，然后按 Ctrl + Shift + B 选择你刚才保存的那个名字，就可以自动编译成html文档了。</p>
<h3 id="anaconda---python-completion">Anaconda - python completion</h3>
<p>Anaconda 强大的补全工具, 还能实时看文档, 转到定义, 自动格式化代码</p>
<p><a href="http://damnwidget.github.io/anaconda/">doc</a></p>
<p><a href="http://damnwidget.github.io/anaconda/">http://damnwidget.github.io/anaconda/</a></p>
<h3 id="hexviewer">HexViewer</h3>
<p>hex查看模式</p>
<h3 id="latex-tools">latex tools</h3>
<p><a href="https://github.com/SublimeText/LaTeXTools">git latextools项目</a></p>
<p><a href="https://latextools.readthedocs.io/en/latest/">DOC on readthedocs</a></p>
<ul>
<li>配套
<ol type="1">
<li><p>sumatrapdf</p>
<p><a href="https://www.sumatrapdfreader.org/free-pdf-reader.html">sumatraPdf网址</a> <a href="https://github.com/sumatrapdfreader/sumatrapdf">gitREP sumatrpdf</a></p></li>
</ol></li>
</ul>
<h3 id="path-tools">Path Tools</h3>
<p>Open the Command Palette (Ctrl/Super + Shift + P) and enter one of the following:</p>
<pre><code>Insert File Path
Insert File Directory
Insert File Name
Insert Path Relative to Project
Insert Directory Relative to Project
Copy File Path
Copy File Directory
Copy File Name</code></pre>
<h3 id="timenow">timenow</h3>
<p>插入日期时间</p>
<h3 id="sidebarenhancements">Side​Bar​Enhancements</h3>
<p>*.html文件，按f5 自动启动chrome浏览设置</p>
<pre><code>[
    { &quot;keys&quot;: [&quot;ctrl+shift+c&quot;], &quot;command&quot;: &quot;copy_path&quot; },
    //chrome
    { &quot;keys&quot;: [&quot;f5&quot;], &quot;command&quot;: &quot;side_bar_files_open_with&quot;,
        &quot;args&quot;: {
            &quot;paths&quot;: [],
            &quot;application&quot;: &quot;C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe&quot;,
            &quot;extensions&quot;:&quot;.html&quot;//匹配任何文件类型
            ,
        }
    },

]</code></pre>
<h3 id="chineseopenconvert">Chinese​Open​Convert</h3>
<p>window install:</p>
<pre><code>git clone -b st3 https://github.com/rexdf/SublimeChineseConvert.git &quot;%APPDATA%\Sublime Text 3\\003work\002memo\001software\001install\ChineseOpenConvert&quot;</code></pre>
<h3 id="dictionaryautocomplete">Dictionary​Auto​Complete</h3>
<p><a href="https://packagecontrol.io/packages/DictionaryAutoComplete">Dictionary​Auto​Complete</a></p>
<p>注意：</p>
<p>发生了不取词的问题。原因是：user setting 文件中“encoding”: “ISO-8859-1”,不能为空。</p>
<p>触发取词改成f1键，输入时需要小写</p>
<p>手动安装cndict,因为Dictionary​Auto​Complet安装时，不能改成f1键</p>
<p>到这里<a href="https://github.com/divinites/cndict.git">下载</a></p>
<p>设置</p>
<ul>
<li><p>command 设置自动完成切换，总的和package内 Two commands are added in the Command Palette (Ctrl+Shift+P):</p>
<ul>
<li>Dictionary Auto Complete: Toggle : Activate/deactivate this plug-in.</li>
<li>Auto Complete: Toggle : Activate/deactivate the sublime auto-completion.</li>
</ul></li>
<li><p>手动跳出来，Ctrl + Space</p>
<p>Just type Ctrl + Space to show auto-completion,</p></li>
<li><p>自动跳出词语</p>
<p>allow auto-complete to always show suggestions by changing your <strong>‘Settings - User’</strong> for example like this: “auto_complete_selector”: “text, comment, string”</p></li>
<li><p>词库</p></li>
</ul>
<p><a href="https://github.com/kpym/FrequencyDictionaries">FrequencyDictionaries on github</a></p>
<ul>
<li>dictionary :</li>
</ul>
<p>A path to alternative dictionary to use in place of the default dictionary used for spell-checking. This allows you for example to use a frequency dictionary that will show in first place the most used words.</p>
<p>in preference-&gt; packagesettin-&gt;autodictionarycomplete-&gt;user-setting:</p>
<pre><code>&quot;languages&quot;: {
  &quot;en_US&quot;: {
    // this is the encoding for the default ST dictionary
    &quot;encoding&quot;: &quot;&quot;,
    // you can overwrite here the default dictionary
    // for example by putting
    // &quot;dictionary&quot; : &quot;Packages/User/frequency_en.txt&quot;,
    &quot;dictionary&quot; : &quot;Packages/User/kl-dict/large_en.txt&quot;
  },</code></pre>
<h3 id="chinese-english-bilingual-dictionary">Chinese-English Bilingual Dictionary</h3>
<p><a href="https://packagecontrol.io/packages/Chinese-English%20Bilingual%20Dictionary">Chinese-English Bilingual Dictionary</a></p>
<ul>
<li>Usage:</li>
</ul>
<p>Ctrl+Alt+Y: 有道词典 Youdao</p>
<p>Ctrl+Alt+C: 金山词典 Jinshan</p>
<p>Select a word you want to translate, use corresponding key-mappings, then depending on the configuration “format”,</p>
<ul>
<li><p>There are three possible parameter for format:</p>
<ul>
<li>“popup”:</li>
</ul>
<p>a tooltips pop-up will show up, it will not be embeded in but just float on the view. close it by ESC or Crtl+Shift+D</p>
<ul>
<li>“phantom”:</li>
</ul>
<p>a block of phantom will show up just below the line: Using Crtl+Shift+D to Erase all Phantoms</p>
<ul>
<li>“pannel”:</li>
</ul>
<p>This is the classical option, an Output Pannel will show up from the bottom.</p></li>
</ul>
<h2 id="其它package汇总">其它package汇总</h2>
<h3 id="markdown-numbered-headers">Markdown Numbered Headers</h3>
<p>like markdown TOC with additional feature of NUmber Heading</p>
<h3 id="insert-nums">Insert Nums:</h3>
<p><a href="https://packagecontrol.io/packages/Insert%20Nums">https://packagecontrol.io/packages/Insert%20Nums</a></p>
<p>inserts (consecutive) numbers across multiple selections or modifies the selections’ contents with expressions. Huge configurability.</p>
<pre><code>Ctrl+Alt+N
&lt;start&gt;:&lt;step&gt;

The complete syntax is: &lt;start&gt;:&lt;step&gt;~&lt;format&gt;::&lt;expr&gt;@&lt;stopexpr&gt;&lt;reverse&gt;
numbers: [&lt;start&gt;][:&lt;step&gt;][~&lt;format&gt;][::&lt;expr&gt;][@&lt;stopexpr&gt;][!]
alpha:   &lt;start&gt;[:&lt;step&gt;][~&lt;format&gt;][@&lt;stopexpr&gt;][!]</code></pre>
<p>for the detailed syntax specification, see: <a href="https://github.com/jbrooksuk/InsertNums/blob/master/format_syntax.txt">format_syntax.txt.</a></p>
<p>essentially Python’s “str.format” syntax</p>
<pre><code>format        ::=  [[fill]align][sign][#][0][width][.precision][type]
fill          ::=  &lt;a character other than &#39;}&#39;&gt;
align         ::=  &quot;&lt;&quot; | &quot;&gt;&quot; | &quot;=&quot; | &quot;^&quot;
sign          ::=  &quot;+&quot; | &quot;-&quot; | &quot; &quot;
width         ::=  integer
precision     ::=  integer
type          ::=  &quot;b&quot; | &quot;c&quot; | &quot;d&quot; | &quot;e&quot; | &quot;E&quot; | &quot;f&quot; | &quot;F&quot; | &quot;g&quot; | &quot;G&quot; | &quot;n&quot; | &quot;o&quot; | &quot;x&quot; | &quot;X&quot; | &quot;%&quot;</code></pre>
<p>Detailed syntax definition:</p>
<p><a href="https://github.com/jbrooksuk/InsertNums/blob/master/format_syntax.txt">format_syntax.txt</a></p>
<ul>
<li><p><strong>start</strong></p>
<ul>
<li><p><em>with numbers</em> (optional): A</p>
<p><a href="http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-decimalinteger">[decimalinteger](http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-decimalinteger)</a></p>
<p>or</p>
<p><a href="http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-floatnumber">[floatnumber](http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-floatnumber)</a></p>
<p>according to Python's syntax specifications with an optional leading sign (<code>-</code> or <code>+</code>). Default: <code>1</code></p></li>
<li><p><em>with alphabet</em> (required): A sequence of either lower- or uppercase ASCII characters from the alphabet (<code>a</code> to <code>z</code> and <code>A</code> to <code>Z</code>).</p></li>
</ul></li>
<li><p><strong>step</strong> (optional)</p>
<ul>
<li><p><em>with numbers</em>: A</p>
<p><a href="http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-decimalinteger">[decimalinteger](http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-decimalinteger)</a></p>
<p>or</p>
<p><a href="http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-floatnumber">[floatnumber](http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-floatnumber)</a></p>
<p>according to Python's syntax specifications with an optional leading sign (<code>-</code> or <code>+</code>). Default: <code>1</code></p></li>
<li><p><em>with alphabet</em>: A</p>
<p><a href="http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-decimalinteger">[decimalinteger](http://docs.python.org/2.6/reference/lexical_analysis.html#grammar-token-decimalinteger)</a></p>
<p>with an optional leading sign (<code>-</code> or <code>+</code>).</p></li>
</ul></li>
<li><p><strong>format</strong> (optional)</p>
<ul>
<li><p><em>with numbers</em>: A format string in Python's [Format Specific</p>
<p>Mini-Language](<a href="http://docs.python.org/2.6/library/string.html#format-specification-mini-language">http://docs.python.org/2.6/library/string.html#format-specification-mini-language</a>) (with small and unimportant adjustments for allowed types).</p></li>
<li><p><em>with alphabet</em>: Similar to <em>with numbers</em> but a stripped-down</p>
<p>version only for strings. This only includes the <code>[[fill]align][width]</code> syntax and additionally accepts a <code>w</code> character at the end (see above).</p></li>
</ul></li>
<li><p><strong>expr</strong> (optional)</p>
<ul>
<li><p><em>numbers only</em>: A valid Python expression which modifies the value as you please. If specified, the <em>format string</em> is applied afterwards. Here is a list of available variables:</p>
<ul>
<li><code>s</code>: The value of <code>step</code> (specified in the format query and defaults to <code>1</code>)</li>
<li><code>n</code>: The number of selections</li>
<li><code>i</code>: Just an integer holding the counter for the iteration; starts at <code>0</code> and is increased by <code>1</code> in every loop</li>
<li><code>_</code>: The current value before the expression (<code>start + i * step</code>)</li>
<li><code>p</code>: The result of the previously evaluated value (without formatting); <code>0</code> for the first value</li>
<li><code>math</code>, <code>random</code> and <code>re</code>: Useful modules that are pre-imported for you</li>
</ul>
<p><em>Note</em>: The return value does not have to be a number type, you can also generate strings, tuples or booleans.</p></li>
</ul></li>
<li><p><strong>stopexpr</strong> (optional)</p>
<p>A valid Python expression which returns a value that translates to true or false (in a boolean context). Theoretically this can be any value. You can use the same values as in <strong>expr</strong> with addition of the following:</p>
<ul>
<li><code>c</code>: The current evaluated value by the expression (without formatting) or just the same as <code>_</code> if there was no expression specified</li>
</ul>
<p>This ignores the number of selections which means that you can also have more or less values than selections. Especially useful when generating numbers from a single selection. - If there is more selections than numbers generated when processing the stop expression, all the remaining selections' text will be deleted. - If there is more numbers generated than selections, all further numbers are joining by newlines (<code>"\n"</code>) and added to the last selection made. This can be the first selection if there is only one.</p></li>
<li><p><strong>reverse</strong> (optional)</p>
<p>Must be <code>!</code> and results in the regions being filled in reversed order.</p></li>
</ul>
<h4 id="examples">Examples:</h4>
<pre><code>numbers: [&lt;start&gt;][:&lt;step&gt;][~&lt;format&gt;][::&lt;expr&gt;][@&lt;stopexpr&gt;][!]
alpha:   &lt;start&gt;[:&lt;step&gt;][~&lt;format&gt;][@&lt;stopexpr&gt;][!]</code></pre>
<p>format= [[fill]align][sign][#][0][width][.precision][type]</p>
<ol type="1">
<li><p>传统法</p>
<pre><code>1:1~0&gt;+#04d::_*1@i&gt;=10!
1:1~0&gt; #04d::_*1@i&gt;=10!
1:1~k&gt; #04d::_*1@i&gt;=10!

~02@p==10 or ~02@_&gt;10 or ~02@i==10

i|p+3 if i!= 0 else _!

|re.sub(r&#39; +&#39;, &#39; &#39;, _)

float加入.

1:1~0&gt;+#04.2f::_*1@i&gt;=10!</code></pre></li>
<li><p>移位法赋值</p>
<pre><code>0~#06x::1&lt;&lt;_@_&gt;10</code></pre></li>
<li><p>字母</p>
<pre><code>z:25~w or z:-1~w</code></pre></li>
</ol>
<h3 id="emmet">emmet</h3>
<pre><code>html自动补全
ZenCoding
不得不用的一款前端开发方面的插件，Write less , show more.安装后可直接使用，Tab键触发，Alt+Shift+W是个代码机器。</code></pre>
<h3 id="valign">VAlign</h3>
<p>inspired by alignment, automatically align</p>
<h3 id="alignment">Alignment</h3>
<p>代码对齐，如写几个变量，选中这几行，Ctrl+Alt+A，哇，齐了。</p>
<h3 id="ctags">Ctags</h3>
<p>函数跳转，我的电脑上是Alt+点击 函数名称，会跳转到相应的函数</p>
<h3 id="docblockr">DocBlockr</h3>
<p>注释插件，生成幽美的注释。标准的注释，包括函数名、参数、返回值等，并以多行显示，省去手动编写。</p>
<h3 id="jsformat">JsFormat</h3>
<p>格式化js代码，这个插件很有用，我们有时在网上看到某些效果，想查看是怎么实现的，但是代码被压缩过，很难阅读，不用怕，用ST3打开，按下快捷键，即可让代码还原，莫非是武林中失传已久的“还我靓靓拳”。</p>
<h3 id="tag">Tag</h3>
<p>格式化标签，让乱七八糟的代码，瞬间整齐清晰。</p>
<h3 id="brackethighlighter">BracketHighlighter</h3>
<p>括弧高亮显示。</p>
<h3 id="clipboard-history">Clipboard History</h3>
<pre><code>剪切板历史，可以保存多个复制信息，按下ctrl+alt+v，可以选择历史剪切板。
Goto-CSS-Declaration
跳转到css文件该class的声明处，方便修改查看，如图下所示，注意对应的css文件要同时打开才行。</code></pre>
<h3 id="scss">SCSS</h3>
<p>支持scss的语法高亮，里面附带了好多CSS Snippet，无论现用或者改造成，都可节省不少时间。 还有很多插件，jquery语法提示，jsHint等等。</p>
<h3 id="sublime-linter">Sublime Linter</h3>
<p>这个插件帮你找到代码中的错误。它支持很多语言：PHP, Python, Java, CoffeScript, CSS, HTML, JavaScript, Perl, PHP, Python, Ruby, XML等。Javascript需要安装Node.js引擎，其他配置详见项目主页。强烈推荐安装。</p>
<h3 id="sublime-codeintel">Sublime CodeIntel</h3>
<p>Sublime CodeIntel是我最喜欢的插件，它提供了很多IDE提供的功能，例如代码自动补齐，快速跳转到变量定义，在状态栏显示函数快捷信息等。 它支持的语言有：PHP, Python, RHTML, JavaScript, Smarty, Mason, Node.js, XBL, Tcl, HTML, HTML5, TemplateToolkit, XUL, Django, Perl, Ruby, Python3.</p>
<h3 id="copy-filepath-with-line-numbers">Copy Filepath With Line Numbers</h3>
<h3 id="file-downloader">file-downloader</h3>
<h2 id="tips">tips</h2>
<h3 id="快捷键介绍">快捷键介绍</h3>
<p>看这里，<a href="https://www.cnblogs.com/ma-dongdong/p/7653231.html">Sublime Text3使用指南</a></p>
<h3 id="列编辑模式">列编辑模式</h3>
<ol type="1">
<li><p>方式一</p>
<p>Shift+鼠标右键 or 鼠标中键</p></li>
<li><p>方式二</p>
<p>sublime 对 列编辑模式 Key binding设置如下：</p>
<pre><code>路径：Preferences→Key Bindings  
   { &quot;keys&quot;: [&quot;ctrl+alt+up&quot;], &quot;command&quot;: &quot;select_lines&quot;, &quot;args&quot;: {&quot;forward&quot;: false} },
   { &quot;keys&quot;: [&quot;ctrl+alt+down&quot;], &quot;command&quot;: &quot;select_lines&quot;, &quot;args&quot;: {&quot;forward&quot;: true} },
但ctrl+alt+up/down 和windows的快捷键设置冲突，我们可以自定义上述设置
路径：Preferences→Key Bindings – User
[{ &quot;keys&quot;: [&quot;alt+up&quot;], &quot;command&quot;: &quot;select_lines&quot;, &quot;args&quot;: {&quot;forward&quot;: false} },
 { &quot;keys&quot;: [&quot;alt+down&quot;], &quot;command&quot;: &quot;select_lines&quot;, &quot;args&quot;: {&quot;forward&quot;: true} },
]    </code></pre></li>
<li><p>方式三</p>
<p>选中需要进行列编辑的多行，然后按下Ctrl+Shift+L也可以开启列编辑模式。</p></li>
</ol>
<h3 id="hex查看模式">hex查看模式</h3>
<pre><code>HexViewer
Ctrl + Shift + P
安装HexViewer
Tools &gt; \003work\002memo\001software\001install &gt; Hex Viewer &gt; Toggle Hex View</code></pre>
<h2 id="faq">FAQ</h2>
<h3 id="字体怎么调整回来">字体怎么调整回来</h3>
<p>preferences-&gt;font</p>
<ul>
<li><p>快捷键</p>
<p>larger: ctrl+= smaller:ctrl+shift+ keypad+(注意一定要是小键盘上的+)</p></li>
<li><p>和OmnMarkupPreview中切换标题的快捷键的误用</p>
<p>增大标题: ctrl+ 减小标题: ctrl+ keypad+</p></li>
</ul>
<h3 id="缺省保存为utf8文件">缺省保存为UTF8文件</h3>
<pre><code>Preferences 设置-默认
Preferences.sublime-settings文件：
// 默认编码格式
&quot;default_encoding&quot;: &quot;UTF-8&quot;,</code></pre>
<p>##怎么用正则模式查找替换</p>
<pre><code>(#{1,6}): 表示查找1到6个#的字符,()表示匹配的意思，并放入$1
替换成$1 ：表示在原先的标题符号后面加上空格</code></pre>
<p>##出现服务找不到，preview不成功如下提示</p>
<pre><code>Error: 404 Not Found
Sorry, the requested URL &#39;http://127.0.0.1:51004/view/28&#39; caused an error:
&#39;buffer_id(28) is not valid (closed or unsupported file format)&#39;
**NOTE:** If you run multiple instances of Sublime Text, you may want to adjust
the `server_port` option in order to get this plugin work again.


sublime Text &gt; Preferences &gt; Package Settings &gt; OmniMarkupPreviewer &gt; Settings - User
粘贴下列的扩展去代替原来的扩展（我用了方法1）
{
    &quot;renderer_options-MarkdownRenderer&quot;: {
        &quot;extensions&quot;: [&quot;tables&quot;, &quot;fenced_code&quot;, &quot;codehilite&quot;]
    }
}</code></pre>
<p>移除了“Strikethrough” 就好了，但是发现把这个再加回也好了。不知道什么原因</p>
<h3 id="为何始终在当前标签打开文件">为何始终在当前标签打开文件？</h3>
<p>preferences-&gt;setting</p>
<p>// KL+: 解决始终在当前标签打开文件的问题，可能是安装了fileDiff插件带来的。</p>
<p>“preview_on_click”: false,</p>
<h3 id="总是在新窗口中打开文件">总是在新窗口中打开文件?</h3>
<p>Preferences -&gt; Settings – Default -&gt; 搜索open_files_in_new_window，将其true 改为 false 后，重启一下sublime text</p>
<h3 id="sublime-text的菜单栏隐藏了怎么再显示出来">sublime text的菜单栏隐藏了怎么再显示出来？</h3>
<p>按住alt键，就可以暂时显示菜单栏了，再次点击“显示/隐藏菜单栏”就能恢复了。</p>
<h3 id="sublimetext快速插入多行递增数字">SublimeText快速插入多行递增数字</h3>
<p><a href="https://blog.csdn.net/cxrsdn/article/details/82496800">SublimeText快速插入多行递增数字</a></p>
<p><a href="https://github.com/jbrooksuk/InsertNums">InsertNums</a></p>
<h3 id="sublime-ctrlshiftf快捷键失效的原因">sublime ctrl+shift+f快捷键失效的原因</h3>
<p>输入法去掉相应的快捷键</p>
<h3 id="怎么列编辑操作">怎么列编辑操作</h3>
<p><a href="https://www.sublimetext.com/docs/2/column_selection.html">Column Selection</a></p>
<ul>
<li>Right Mouse Button + Shift</li>
<li>OR: Middle Mouse Button</li>
<li>Add to selection: Ctrl</li>
<li>Subtract from selection: Alt</li>
</ul>
<h2 id="latex公式案例">LaTex公式案例</h2>
<p>latex example:</p>
<p><br /><span class="math display">$$f(x;\mu,\sigma^2) = \frac{1}{\sigma\sqrt{2\pi}} e^{ -\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2 }$$</span><br /></p>
<p>equation.he Lorenz Equations</p>
<p><br /><span class="math display">$$\begin{aligned}
\begin{aligned}\dot{x} &amp; = \sigma(y-x) \\\dot{y} &amp; = \rho x - y - xz \\\dot{z} &amp; = -\beta z + xy\end{aligned}
\end{aligned}$$</span><br /></p>
<p>inline an example of a LaTeX <span class="math inline">$\sqrt{3x-1}+(1+x)^2$</span></p>
<h2 id="sublime-使用tips">sublime 使用TIPS</h2>
<h3 id="sublime-本身的使用">sublime 本身的使用</h3>
<h4 id="开启project文件视图文件检索文件搜索">开启Project文件视图，文件检索，文件搜索</h4>
<ol type="1">
<li>开启project侧边栏 ：Project -&gt; Add Forder to Project</li>
<li>找文件： Ctrl + P 查找文件</li>
<li>找函数： Ctrl + P @操作符(可以是变量名或函数名)</li>
<li>模糊匹配： 文件#搜索的变量</li>
<li>定位到行：:行数</li>
</ol>
<h3 id="sublime-插件-insert-nums的使用">sublime 插件： insert nums的使用</h3>
<h3 id="build-system-新建或修改build-system">build System 新建或修改build System</h3>
<h4 id="配置自己的build-system在命令行中运行python">配置自己的build-system，在命令行中运行python</h4>
<p><a href="https://blog.csdn.net/hey_melody/article/details/94438969">配置自己的build-system，在命令行中运行python</a></p>
<p>在【工具】–【编译系统】–【新编译系统】或者你的 <span class="title-ref">SublimeDataPackagesUser路径下新建一个Python_cmd.sublime-build</span></p>
<p>更改已有的build system（debian jessie）</p>
<p><a href="https://blog.csdn.net/rootie321/article/details/44894361">sublime text 3更改已有的build system（debian jessie）</a></p>
<h4 id="sublime怎么修改之前写过的编译系统配置">sublime怎么修改之前写过的编译系统配置</h4>
<p><a href="https://blog.csdn.net/a19990412/article/details/82659266">sublime怎么修改之前写过的编译系统配置</a></p>
<p>工具 -&gt; 编译系统 -&gt; 新建编译系统, 佯作保存，找到目录。然后编辑原先的BUILD system 文件，用编辑器修改。</p>
<pre><code>E:\programfiles\portable\Sublime3207portable\Data\Packages\User</code></pre>
