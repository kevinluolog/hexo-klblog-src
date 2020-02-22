---
title: demo-markdown
tag: 
- 自动生成
- 001.网站
categories:
- 001.网站
toc: TRUE
---
<h1 id="markdow-demo">markdow demo</h1>
<h2 id="副标题">副标题</h2>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h3 id="标题这里前面要有空格前后有空行此处最好不要添加链接以和rest一致">标题，这里前面要有空格，前后有空行，此处最好不要添加链接以和reST一致</h3>
<h4 id="body">body</h4>
<h5 id="标题级段落paragraph">标题级段落，paragraph</h5>
<p>段落，paragraph,前后面要有空行，除非是文档的头和尾。<strong>``n``被去掉了</strong> 紧接的另一行会被视为同一段落，换行符会被去掉。这样可以<strong>``n``被去掉了</strong> 方便段落书写时随意换行，不用启用文本编辑器的自动换行<strong>``n``被去掉了</strong> 也能实现一个段落。段落内连续两个以上空格 tab 会skip</p>
<div class="line-block">段落，保留换行符，行尾加2个空格<br />
因前面行尾加了两个空格，此行成一个独立行，如是html语言则是前行尾加了<code>&lt;br&gt;</code></div>
<p>缩进段落仍是段落，tab或4个空格以下，自动去掉</p>
<p>缩进段落仍是段落，tab或4个空格以下，自动去掉</p>
<p>缩进段落仍是段落，tab或4个空格以下，自动去掉</p>
<pre><code>缩进段落变成代码块，tab或4个空格，表示代码段，相当于.. code:: **多   空格**，**多          tab被保留**，并且不解析markup***符号***，大部份解释器还不自动换行。

 缩进段落，&gt;tab或4个空格,&lt;2个tab或8个空格

    缩进段落，2个tab或8个空格

      缩进段落，&gt;2个tab或8个空格</code></pre>
<p>建议：正常使用仅不缩进和缩进tab或4个空格。前者表示正常段落，后者表示是代码块。前者如果需要换行符则行尾加2空格。</p>
<h5 id="列表级段落paragraph">列表级段落，paragraph</h5>
<p>由于列表自己有层级缩进结构，要从属于相应列表的，以相应列表层级数目作为标基，参考标题段落。对齐都是参考本层级的位置的。</p>
<ul>
<li>一个空行才表示分段，在要分段的地方，一定要空一行；不想分段的地方，敲个回车就行了</li>
<li>tab缩进主要表示一种层级关系，在各种嵌套的时候，一定要注意缩进， 缩进少一个空格都有可能出问题。多段也是tab缩进一次，相对于列表箱号位。</li>
</ul>
<p>示例</p>
<ul>
<li><p>列表1级</p>
<p>列表1级多段落，paragraph，4个空格，必须要缩进4个空格，否则不能支持列表段。 第2行顶格。</p>
<p>列表1级多段落，paragraph，4个空格，必须要缩进4个空格，否则不能支持列表段。 第2行对齐。</p>
<p>列表1级多段落，paragraph，5个空格，必须要缩进4个空格，否则不能支持列表段 顶格第2行</p>
<pre><code>列表1级多段落，paragraph，8个空格，表示代码段
第2行</code></pre>
<ul>
<li><p>列表2级，相对上级列表3个空格，高于3个空格会被视为代码块</p>
<p>列表2级多段落，paragraph，相对本级列表位4个空格，不能少于4个，要不会会被视为本级列表结束，跑到上一个列表。 对齐第2行</p>
<p>列表2级多段落，paragraph，相对本级列表位5个空格。5,6,7个空格都可以。不能8个，8个则成代码块了 第2行对齐</p>
<ul>
<li><p>列表3级</p>
<p>列表3级段落，paragraph，4个空格 第2行</p>
<pre><code>列表1级段落，paragraph，相对本列表8个空格，表示代码块
第2行</code></pre></li>
</ul>
<p>列表2级段落，paragraph，顶格8个空格 对齐第2行，建议还是和上行缩进一致，这样代码美观</p></li>
<li><p>续上列表2级，一个tab/4个空格</p></li>
</ul></li>
</ul>
<h4 id="列表">列表</h4>
<ul>
<li>一个空行才表示分段，在要分段的地方，一定要空一行；不想分段的地方，敲个回车就行了</li>
<li>tab缩进主要表示一种层级关系，在各种嵌套的时候，一定要注意缩进， 缩进少一个空格都有可能出问题</li>
</ul>
<p>参考<a href="https://www.jianshu.com/p/9f71e260925d">Github+Jekyll 搭建个人网站详细教程</a></p>
<ul>
<li><a href="https://links.jianshu.com/go?to=https%3A%2F%2Frubyinstaller.org%2F">Ruby installer</a></li>
</ul>
<div class="header">
<p>This space for rent.</p>
</div>
<table>
<caption>Frozen Delights!</caption>
<colgroup>
<col style="width: 27%" />
<col style="width: 18%" />
<col style="width: 54%" />
</colgroup>
<thead>
<tr class="header">
<th>Treat</th>
<th>Quantity</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Albatross</td>
<td>2.99</td>
<td>On a stick!</td>
</tr>
<tr class="even">
<td>Crunchy Frog</td>
<td>1.49</td>
<td>If we took the bones out, it wouldn't be crunchy, now would it?</td>
</tr>
<tr class="odd">
<td>Gannet Ripple</td>
<td>1.99</td>
<td>On a stick!</td>
</tr>
</tbody>
</table>
<table>
<thead>
<tr class="header">
<th>1</th>
<th>2</th>
<th>3</th>
<th>4</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>5</td>
<td>6</td>
<td>7</td>
<td>8</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>
<p>block indent</p>
<blockquote>
<p>dark night give me <strong>black</strong> <sub>eyes</sub> but I use it to <sup>seek</sup> for <em>bright</em></p>
<p>-- gu Cheng</p>
</blockquote>
<p>part <span class="math inline">(<em>π</em>/4) * <em>d</em><sup>2</sup></span></p>
<p>this is the grammar of markdown: $A = (pi/4)d^2$</p>
<p><br /><span class="math display"><em>A</em> = (<em>π</em>/4)<em>d</em><sup>2</sup></span><br /></p>
