---
title: hexo
tag: 
- 自动生成
- 笔记
categories:
- 001.网站
toc: TRUE
---
<h1 id="hexo">hexo</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="install">install</h2>
<p><a href="https://hexo.io/docs/">Installation guide on hexo.io</a></p>
<p><a href="https://segmentfault.com/a/1190000004947261">手把手教你使用Hexo + Github Pages搭建个人独立博客</a></p>
<h3 id="hexo-module-安装">hexo module 安装</h3>
<pre><code>npm install hexo-cli -g</code></pre>
<p>hexo module安装到node目录node_modules，根目录有hexo.cmd</p>
<h3 id="hexo-blog-init">hexo blog init</h3>
<pre><code>$ cd d:/hexo
$ npm install hexo-cli -g
$ hexo init blog
$ cd blog
$ npm install
$ hexo g # 或者hexo generate
$ hexo s # 或者hexo server，可以在http://localhost:4000/ 查看</code></pre>
<p>另外还有其他几个常用命令：</p>
<pre><code>$ hexo new &quot;postName&quot; #新建文章
$ hexo new page &quot;pageName&quot; #新建页面</code></pre>
<p>常用简写</p>
<pre><code>$ hexo n == hexo new
$ hexo g == hexo generate
$ hexo s == hexo server
$ hexo d == hexo deploy</code></pre>
<p>常用组合</p>
<pre><code>$ hexo d -g #生成部署
$ hexo s -g #生成预览</code></pre>
<p>现在我们打开 <code>http://localhost:4000/</code> 已经可以看到一篇内置的blog。</p>
<h3 id="configuration">configuration</h3>
<p><a href="https://hexo.io/docs/configuration">hexo.io/docs/configuration</a></p>
<h3 id="commands">Commands</h3>
<h3 id="migration">Migration</h3>
<h2 id="basic-usage">Basic Usage</h2>
<h2 id="customization">Customization</h2>
<p>Permalinks</p>
<p>Themes</p>
<p><a href="https://hexo.io/zh-cn/docs/configuration.html">hexo.io-spec-配置</a></p>
<p>Templates</p>
<p>Variables</p>
<p>Helpers</p>
<p>Internationalization (i18n)</p>
<p>Plugins</p>
<h2 id="theme分享">theme分享</h2>
<h3 id="几款简单的theme">几款简单的theme</h3>
<p><a href="https://www.jianshu.com/p/f4ae9ee1328a">【Hexo】推荐5款简洁美观的主题</a></p>
<p>推荐第一款。理由简单，全文字，色调浅色系不扎眼。</p>
<ol type="1">
<li><p><a href="https://github.com/frostfan/hexo-theme-polarbear">hexo-theme-polarbear</a></p>
<p><a href="https://d2fan.com/">demo</a></p></li>
<li><p><a href="https://github.com/KevinOfNeu/hexo-theme-xoxo">hexo-theme-xoxo</a></p>
<p><a href="https://d2fan.com/">demo</a></p></li>
<li><p><a href="https://github.com/iJinxin/hexo-theme-sky">hexo-theme-sky</a></p>
<p><a href="https://ijinxin.github.io/">demo</a></p></li>
</ol>
<h3 id="melody">melody</h3>
<p><a href="https://molunerfinn.com/hexo-theme-melody-doc/">hexo-theme-melody-doc</a></p>
<h4 id="melody-设置">melody-设置</h4>
<h5 id="fireworkslive2d-白猫-animation">fireworks,live2d 白猫 animation</h5>
<p><a href="https://molunerfinn.com/hexo-theme-melody-doc/third-party-support.html#installation">detail guide on melody doc</a></p>
<ul>
<li><p>fireworks</p>
<p>Like the <a href="http://animejs.com/">anime.js</a> clicking effects</p>
<p>Set the melody.yml</p>
<pre><code>fireworks: true</code></pre></li>
<li><p>Live2D Animated model pendant</p>
<p>install the Live2D module, which needs to be executed in the root directory of the blog through the terminal:</p>
<pre><code>npm install --save hexo-helper-live2d</code></pre>
<p>The corresponding module is downloaded <a href="https://github.com/xiazeyu/live2d-widget-models">here</a> , For example, tororo(Cute White Cat)</p>
<p>copy all the files in packages to the node_moduels folder in the root directory of the blog.</p>
<p>or install as following:</p>
<pre><code>npm install {packagename} 

The package name is the folder name in packages/ such as:
live2d-widget-model-chitose
live2d-widget-model-tororo</code></pre></li>
</ul>
<h3 id="next">next</h3>
<h4 id="next-设置">next-设置</h4>
<h5 id="busuanzi_count-阅读次数访问人数">busuanzi_count 阅读次数/访问人数</h5>
<ul>
<li><p>原理：</p>
<p>页面植入busuanzi提供的js链接代码， 在 <code>\themes\next\layout\_partials\analytics\busuanzi-counter.swig</code> 中</p>
<pre><code>&lt;script{{ pjax }} async src=&quot;https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js&quot;&gt;&lt;/script&gt;</code></pre>
<p>同时在相应的页面模板加入阅读次数等数据。 其提供单页文章和全站的字数和次数信息。next分别把它放在页面标题下面和footer底部。 其渲染过程仍不清楚，</p>
<p>页面标题下面：</p>
<p>在 <code>\themes\next\layout\_macro\post.swig</code> 中,只是 <code>&lt;span class="busuanzi-value" id="busuanzi_value_page_pv"&gt;&lt;/span&gt;</code> 没有实体，不知什么时候，渲染进去的？</p>
<p>footer底部,全站的访问人数等数据：</p>
<p>在 <code>\themes\next\layout\_partials\analytics\busuanzi-counter.swig</code> 中，此处我增加了一个theme变量来控制</p>
<pre><code>{%- if theme.kl_footer_eye === true %}</code></pre></li>
</ul>
<h5 id="symbols_count_time-文章字数统计与阅读时长">symbols_count_time 文章字数统计与阅读时长</h5>
<p>同样全站的显示的FOOTER, 单文章显示在文章title下面。</p>
<p>配置使能要注意：</p>
<p>模块说明里就说明，使能要在root/_config.yml中加入，</p>
<pre><code>symbols_count_time: ## 此处定义是用来控制模块计算的。下面的变量和next.yml中的配    置一起控制字数和时长显示与否。要同时设置才有效果。
  symbols: true
  time: true
  total_symbols: false ##kl+ true
  total_time: false ##kl+ true
  exclude_codeblock: false ##kl+ false</code></pre>
<p>同时在theme的_config.yml中，同样要使能，</p>
<pre><code>symbols_count_time: ## 此处定义是用来控制显示的。klblog\_    config.yml中是用来控制模块计算的。下面的变量和klblog\_    config.yml中中的配置一起控制字数和时长显示与否。要同时设置才有效果。
  separated_meta: true ##kl+ true 换行显示
  item_text_post: true ##kl+ true
  item_text_total: true ##kl+ false
  awl: 4
  wpm: 275</code></pre>
<ul>
<li><p>删除footer底部的全站字数，时长信息。</p>
<p>只要在 <code>root\_config.yml</code> 中</p>
<pre><code>total_symbols: false ##kl+ true
total_time: false ##kl+ true</code></pre></li>
<li><p>文章字数统计与阅读时长，取不到数据</p>
<p>hexo clean 一下，再编译就可以了，原因不明。</p></li>
</ul>
<h5 id="hexo-next修改内容区域的宽度">hexo-Next修改内容区域的宽度</h5>
<p><a href="http://theme-next.iissnan.com/faqs.html#custom-content-width">如何更改内容区域的宽度？</a></p>
<p><a href="http://leeze.coding.me/2019/09/03/hexoarea/">leeze Hexo之修改内容区域的宽度</a></p>
<p>在 <code>\themes\next\source\css\_variables\base.styl</code></p>
<pre><code>//kl+ new,参见
//当屏幕宽度 &lt; 1600px
$content-desktop                = 900px;
//当屏幕宽度 &gt;= 1600px
$content-desktop-large          = 900px;
$content-desktop-largest        = 900px;</code></pre>
<h5 id="实现点击出现桃心效果animation">实现点击出现桃心效果animation</h5>
<p>在 <code>/themes/*/source/js/src下新建文件click.js</code> ，接着把以下粘贴到click.js文件中。</p>
<p>代码如下：</p>
<pre><code>!function(e,t,a){function n(){c(&quot;.heart{width: 10px;height: 10px;position: fixed;background: #f00;transform: rotate(45deg);-webkit-transform: rotate(45deg);-moz-transform: rotate(45deg);}.heart:after,.heart:before{content: &#39;&#39;;width: inherit;height: inherit;background: inherit;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;position: fixed;}.heart:after{top: -5px;}.heart:before{left: -5px;}&quot;),o(),r()}function r(){for(var e=0;e&lt;d.length;e++)d[e].alpha&lt;=0?(t.body.removeChild(d[e].el),d.splice(e,1)):(d[e].y--,d[e].scale+=.004,d[e].alpha-=.013,d[e].el.style.cssText=&quot;left:&quot;+d[e].x+&quot;px;top:&quot;+d[e].y+&quot;px;opacity:&quot;+d[e].alpha+&quot;;transform:scale(&quot;+d[e].scale+&quot;,&quot;+d[e].scale+&quot;) rotate(45deg);background:&quot;+d[e].color+&quot;;z-index:99999&quot;);requestAnimationFrame(r)}function o(){var t=&quot;function&quot;==typeof e.onclick&amp;&amp;e.onclick;e.onclick=function(e){t&amp;&amp;t(),i(e)}}function i(e){var a=t.createElement(&quot;div&quot;);a.className=&quot;heart&quot;,d.push({el:a,x:e.clientX-5,y:e.clientY-5,scale:1,alpha:1,color:s()}),t.body.appendChild(a)}function c(e){var a=t.createElement(&quot;style&quot;);a.type=&quot;text/css&quot;;try{a.appendChild(t.createTextNode(e))}catch(t){a.styleSheet.cssText=e}t.getElementsByTagName(&quot;head&quot;)[0].appendChild(a)}function s(){return&quot;rgb(&quot;+~~(255*Math.random())+&quot;,&quot;+~~(255*Math.random())+&quot;,&quot;+~~(255*Math.random())+&quot;)&quot;}var d=[];e.requestAnimationFrame=function(){return e.requestAnimationFrame||e.webkitRequestAnimationFrame||e.mozRequestAnimationFrame||e.oRequestAnimationFrame||e.msRequestAnimationFrame||function(e){setTimeout(e,1e3/60)}}(),n()}(window,document);</code></pre>
<p>在 <code>\themes\*\layout\_layout.swig</code> 文件末尾body内添加:</p>
<pre><code>&lt;!-- 页面点击小红心 --&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;/js/clicklove.js&quot;&gt;&lt;/script&gt;</code></pre>
<h5 id="目录栏链接选中颜色">目录栏链接选中颜色</h5>
<p>copy到</p>
<pre><code>// Sidebar
// --------------------------------------------------
$sidebar-nav-hover-color          = $orange;
$sidebar-highlight                = $orange;

$toc-link-color                       = $grey-dim;
$toc-link-border-color                = $grey-light;
$toc-link-hover-color                 = black;
$toc-link-hover-border-color          = black;
$toc-link-active-color                = $sidebar-highlight;
$toc-link-active-border-color         = $sidebar-highlight;
$toc-link-active-current-color        = $sidebar-highlight;
$toc-link-active-current-border-color = $sidebar-highlight;</code></pre>
<h5 id="custom-path">custom path</h5>
<h3 id="maupassant---hexo最简洁主题---cho">Maupassant - Hexo最简洁主题 - cho</h3>
<p><a href="https://www.haomwei.com/technology/maupassant-hexo.html">大道至简——Hexo简洁主题推荐</a></p>
<h4 id="安装">安装</h4>
<p>注：若<code>npm install hexo-renderer-sass</code>安装时报错，可能是国内网络问题，请尝试使用代理或者切换至<a href="http://npm.taobao.org">淘宝NPM镜像</a>安装。 <code>npm install hexo-renderer-sass</code></p>
<p>出现问题: hexo 3.8.0用淘宝镜像装hexo-renderer-sass，生成的网页有问题，装hexo-renderer-scss，就没问题了。 kl: 建议尽量用npm来安装。</p>
<ol type="1">
<li><p>安装主题和渲染器：</p>
<pre><code>$ git clone https://github.com/tufu9441/maupassant-hexo.git themes/    maupassant
$ npm install hexo-renderer-pug --save
$ npm install hexo-renderer-sass --save</code></pre></li>
<li><p>编辑Hexo目录下的</p>
<p><code>_config.yml</code>，将<code>theme</code>的值改为<code>maupassant</code>。</p></li>
<li><p>hexo-wordcount 字数统计，阅读时长：缺省没装</p>
<p>这是在 <code>_config.yml</code> 中设置 <code>wordcount: true ##kl+ false</code> 时报错的。</p>
<p>参考 <a href="https://www.jianshu.com/p/f615e79a50d7">Hexo-文章字数统计与阅读时长</a></p>
<p><code>npm i --save hexo-wordcount</code></p>
<p>因缺省已经使能。下面修改不用了，可以作用改动参考</p>
<ol type="1">
<li><p>在maupassant主题下的新建一个wordcount.pug文件</p>
<p><code>themes\maupassant\layout\_partial\wordcount.pug wordcount.pug</code> 文件增加内容：</p>
<pre><code>span(class=&quot;post-time&quot;)
  span.post-meta-item-text= &quot; | &quot;
  span(class=&quot;post-meta-item-icon&quot;)
    i(class=&quot;fa fa-keyboard-o&quot;)
    // span.post-meta-item-text= &quot; 字数统计：&quot;
    span.post-count= &#39; &#39;+wordcount(page.content)
    span.post-meta-item-text= &#39; 字&#39;
span(class=&quot;post-time&quot;) &amp;nbsp; | &amp;nbsp;
  span(class=&quot;post-meta-item-icon&quot;)
      i(class=&quot;fa fa-hourglass-half&quot;)
      // span.post-meta-item-text= &quot; 阅读时长：&quot;
      span.post-count= &#39; &#39;+min2read(page.content)
      span.post-meta-item-text= &quot; 分钟&quot;</code></pre></li>
<li><p>在 <code>themes\maupassant\layout\post.pug</code> 文件中引入wordcount.pug文件（我自定义的位置在busuanzi与disqus之间）</p>
<pre><code>if theme.busuanzi == true
  script(src=&#39;https://dn-lbstatics.qbox.me/          busuanzi/2.3/busuanzi.pure.mini.js&#39;, async)
  span#busuanzi_container_page_pv= &#39; | &#39;
    span#busuanzi_value_page_pv
    span= &#39; &#39; + __(&#39;Hits&#39;)
include _partial/wordcount.pug
if theme.disqus</code></pre></li>
</ol></li>
</ol>
<h4 id="设置">设置</h4>
<ol type="1">
<li><p>in _config.yml</p>
<p>fontawesome:</p>
<div class="line-block">fa-home<br />
fa-th categories<br />
fa-tags<br />
fa-history<br />
fa-user<br />
fa-book</div>
<pre><code>show_category_count: false
wordcount: true ## 统计字数
widgets_on_small_screens: true
busuanzi: true ##kl+ false，网页访问统计


menu:
  - page: home
    directory: .
    icon: fa-home

widgets:
  - search
  - category
  - tag</code></pre></li>
</ol>
<h2 id="hexo-plugin插件">hexo plugin插件</h2>
<h3 id="generate-flowchart-diagrams-for-hexo.">Generate flowchart diagrams for Hexo.</h3>
<p><a href="https://github.com/bubkoo/hexo-filter-flowchart">hexo-filter-flowchart</a></p>
<ul>
<li><p>install</p>
<p>npm install --save hexo-filter-flowchart</p>
<p>setting: 实测下面的不改动也可以显示出来</p>
<pre><code>Config
In your site&#39;s _config.yml:

flowchart:
  # raphael:   # optional, the source url of raphael.js
  # flowchart: # optional, the source url of flowchart.js
  options: # options used for `drawSVG`</code></pre></li>
</ul>
<p>This plugin is based on <a href="https://github.com/adrai/flowchart.js">flowchart.js</a>, so you can defined the chart as follow:</p>
<p><code>`flow st=&gt;start: Start|past:&gt;http://www.google.com[blank] e=&gt;end: End:&gt;http://www.google.com op1=&gt;operation: My Operation|past op2=&gt;operation: Stuff|current sub1=&gt;subroutine: My Subroutine|invalid cond=&gt;condition: Yes or No?|approved:&gt;http://www.google.com c2=&gt;condition: Good idea|rejected io=&gt;inputoutput: catch something...|request  st-&gt;op1(right)-&gt;cond cond(yes, right)-&gt;c2 cond(no)-&gt;sub1(left)-&gt;op1 c2(yes)-&gt;io-&gt;e c2(no)-&gt;op2-&gt;e</code>`</p>
<h3 id="hexo-generator-feed">hexo-generator-feed</h3>
<p><a href="https://github.com/hexojs/hexo-generator-feed.git">github download</a></p>
<p>Install</p>
<pre><code>$ npm install hexo-generator-feed --save
Hexo 3: 1.x
Hexo 2: 0.x</code></pre>
<p>Use</p>
<p>In the front-matter of your post, you can optionally add a description, intro or excerpt setting to write a summary for the post. Otherwise the summary will default to the excerpt or the first 140 characters of the post.</p>
<p>Options</p>
<p>You can configure this plugin in _config.yml.</p>
<pre><code>feed:
  type: atom
  path: atom.xml
  limit: 20
  hub:
  content:
  content_limit: 140
  content_limit_delim: &#39; &#39;
  order_by: -date
  icon: icon.png</code></pre>
<p>type - Feed type. (atom/rss2) path - Feed path. (Default: atom.xml/rss2.xml) limit - Maximum number of posts in the feed (Use 0 or false to show all posts) hub - URL of the PubSubHubbub hubs (Leave it empty if you don't use it) content - (optional) set to 'true' to include the contents of the entire post in the feed. content_limit - (optional) Default length of post content used in summary. Only used, if content setting is false and no custom post description present. content_limit_delim - (optional) If content_limit is used to shorten post contents, only cut at the last occurrence of this delimiter before reaching the character limit. Not used by default. order_by - Feed order-by. (Default: -date) icon - (optional) Custom feed icon. Defaults to a gravatar of email specified in the main config.</p>
<h3 id="hexo-generator-search">hexo-generator-search</h3>
<p>产生搜索功能，search.XML</p>
<pre><code>$ npm install hexo-generator-search --save</code></pre>
<h3 id="hexo-symbols-count-time-for-next-theme">hexo-symbols-count-time for next theme</h3>
<pre><code>$ npm install hexo-symbols-count-time --save</code></pre>
<h3 id="hexo-generator-category">hexo-generator-category</h3>
<pre><code>$ npm install hexo-generator-category --save
option:
tag_generator:
  per_page: 10
  order_by: -date</code></pre>
<h3 id="hexo-generator-tag">hexo-generator-tag</h3>
<pre><code>$ npm install hexo-generator-tag --save
Options
tag_generator:
  per_page: 10
  order_by: -date</code></pre>
<h3 id="hexo-directory-category">hexo-directory-category</h3>
<p>Automatically add front-matter categories to Hexo article according to the article file directory.</p>
<p>Directory is means relative form article file path to Hexo source _posts folder.</p>
<p><a href="https://github.com/zthxxx/hexo-directory-category">github-hexo-directory-category</a></p>
<pre><code>npm install --save hexo-directory-category
auto_dir_categorize:
    enable: true  # options:true, false; default is true
    force: false # options:true, false; default is false
enable - Enable the plugin. Defaults to true.
force - Overwrite article front-matter categories, even if it has option categories.Defaults to false.</code></pre>
<h3 id="some-module-install">some module install</h3>
<pre><code>$ npm install hexo-generator-search --save
$ npm install hexo-symbols-count-time --save


$ npm install hexo-generator-category --save
option:
tag_generator:
  per_page: 10
  order_by: -date


$ npm install hexo-generator-tag --save
Options
tag_generator:
  tag_generator:true
  per_page: 10
  order_by: -date   </code></pre>
<h2 id="hexo高级教程">hexo高级教程</h2>
<p>参考</p>
<p><a href="https://www.jianshu.com/nb/33192262">Hexo高级教程</a></p>
<p><a href="https://www.jianshu.com/p/26b5a0b59cdd">hexo脚本编写指南（一）</a></p>
<p><a href="https://www.jianshu.com/p/12279cabca81">Hexo Docs（三）- 高级进阶</a></p>
<p><a href="https://hexo.io/zh-cn/api/">脚本需要掌握hexo api</a></p>
<p><a href="https://nodejs.org/en/docs/">nodejs doc-en</a></p>
<p><a href="https://nodejs.org/en/docs/guides/debugging-getting-started/">nodejs debug guide</a></p>
<p><a href="https://nodejs.org/zh-cn/docs/">nodejs doc-zh 中文</a></p>
<p>教程</p>
<p><a href="https://www.runoob.com/nodejs/nodejs-tutorial.html">Node.js 教程</a></p>
<p><a href="https://www.jianshu.com/p/fe2074527ca2">hexo-generator-category 源码分析</a></p>
<p><a href="https://www.jianshu.com/p/470904307d2c">hexo-generator-tag 源码分析</a></p>
<p><a href="https://www.jianshu.com/p/7bec9866a04d">hexo-generator-index 源码分析</a></p>
<p><a href="https://www.jianshu.com/p/c5d333e6353c">next主题的模板引擎swig语法介绍</a></p>
<h3 id="脚本script">脚本Script</h3>
<p>只需要把 JavaScript 文件放到 scripts 文件夹，在启动时就会自动载入。</p>
<h3 id="hexo扩展">hexo扩展</h3>
<ol type="1">
<li>控制台 (Console)</li>
<li>部署器 (Deployer)</li>
<li>过滤器 (Filter)</li>
<li>生成器 (Generator)</li>
<li>辅助函数 (Helper)</li>
<li>迁移器 (Migrator)</li>
<li>处理器 (Processor)</li>
<li>渲染引擎 (Renderer)</li>
<li>标签 (Tag)</li>
</ol>
<h2 id="tips">tips</h2>
<h3 id="tortoisegit使用密钥为何每次还是需要输入用户名密码">tortoiseGit使用密钥，为何每次还是需要输入用户名密码</h3>
<p><a href="https://gitee.com/oschina/git-osc/issues/I57KR?from=project-issue">tortoiseGit使用密钥，为何每次还是需要输入用户名密码</a></p>
<p>Q:tortoiseGit使用密钥，为何每次还是需要输入用户名密码</p>
<p>A:那个URL应该选择ssh的，也就是以git@git.oschina.net:{username}/{repo name} 这种形式的，你虽然把SSH key加进去了， 但是你如果仍使用的是https方式，当然要提示输入用户名密码了。 如，git@github.com:kevinluolog/hexo-klblog-src.git</p>
<p>不过用https方式访问，也有方法可以免手工输入用户名密码的。</p>
<p>方法1：直接带入，https://{用户名}：{<a href="mailto:密码%7D@github.com">密码}@github.com</a>/{username}/{repo name} 如， <span class="title-ref">https://kevinluolog:XXX@github.com/kevinluolog/hexo-next-muse.git</span></p>
<p>方法2：利用token, 当然先要创建。 如， <span class="title-ref">https://gh_token@github.com/kevinluolog/hexo-next-muse.git</span></p>
<h3 id="怎么改掉网页底部的copyright缺省内容">怎么改掉网页底部的COPYRIGHT缺省内容？</h3>
<pre><code>\hexo\klBlog\themes\maupassant-hexo\layout\_partial\footer.pug(7):   a(rel=&#39;nofollow&#39;, target=&#39;_blank&#39;, href=&#39;https://github.com/pagecho&#39;)  Cho.

  #footer= &#39;Copyright © &#39; + date(Date.now(), &#39;YYYY&#39;) + &#39; &#39;
    a(href=url_for(&#39;.&#39;), rel=&#39;nofollow&#39;)= config.title + &#39;.&#39;
    |  Powered by
    a(rel=&#39;nofollow&#39;, target=&#39;_blank&#39;, href=&#39;https://hexo.io&#39;)  Hexo.
    a(rel=&#39;nofollow&#39;, target=&#39;_blank&#39;, href=&#39;https://github.com/tufu9441/maupassant-hexo&#39;)  Theme
    |  by
    a(rel=&#39;nofollow&#39;, target=&#39;_blank&#39;, href=&#39;https://github.com/pagecho&#39;)  Cho.</code></pre>
<h3 id="help-网址">help 网址</h3>
<p>非常详细的教程，看完照做就可以了。这个写手做事非常细致。就象博主自己讲的 -- <span class="title-ref">我走的很慢，但我从不后退。</span></p>
<p><a href="http://ijiaober.github.io/2014/08/02/hexo/hexo-index/">Hexo使用攻略 index</a></p>
<p><a href="https://www.jianshu.com/p/efaf72aab32e">Hexo博客从搭建部署到SEO优化等详细教程</a></p>
<p><a href="https://www.jianshu.com/p/efaf72aab32e">Hexo seo org</a></p>
<p><a href="https://www.haomwei.com/technology/maupassant-hexo.html">hexo-theme-maupassant-中文help-大道至简——Hexo简洁主题推荐</a></p>
<dl>
<dt><a href="https://www.cnblogs.com/xljzlw/p/5137622.html">hexo主题中添加相册功能</a></dt>
<dd><p><a href="http://lwzhang.github.io/">http://lwzhang.github.io/</a></p>
</dd>
</dl>
<p><a href="https://www.jianshu.com/p/7bec9866a04d">hexo-generator-index 源码分析</a></p>
<p>很好的主题开发文章</p>
<p><a href="https://molunerfinn.com/make-a-hexo-theme/#%E5%89%8D%E8%A8%80">Hexo主题开发经验杂谈org</a></p>
<p>参考hexo渲染的事件，可以找到generateBefore这个钩子hook，只要在这个钩子触发的时候，判断一下存不存在data files里的配置文件_data/next.yml，存在的话就把这个配置文件替换或者合并主题本身的配置文件。Next主题采用的是覆盖，melody主题采用的是替换。各有各的好处，并不是绝对的。</p>
<p>写法是就是在我们的temp主题目录下的scripts文件夹里（没有就创建一个），写一个js文件，内容如下：</p>
<pre><code>/**
 * Note: configs in _data/temp.yml will replace configs in   hexo.theme.config.
 */
hexo.on(&#39;generateBefore&#39;, function () {
  if (hexo.locals.get) {
    var data = hexo.locals.get(&#39;data&#39;) // 获取_data文件夹下的内容
    data &amp;&amp; data.temp &amp;&amp; (hexo.theme.config = data.temp) // 如果temp.yml   存在，就把内容替换掉主题的config
  }
})</code></pre>
<p><a href="https://juejin.im/entry/59ba97216fb9a00a6b6e50bf">Hexo主题开发经验杂谈</a></p>
<p>字体大清晰。文字title <a href="https://github.com/stiekel/hexo-theme-random">hexo-theme-random</a></p>
<p><a href="http://chensd.com/2016-06/hexo-theme-guide.html">Hexo 主题开发指南-random-不可能不确定</a></p>
<h3 id="theme-front-matter">theme-front-matter</h3>
<p>在 <code>\source\*.md</code> 文件的开头</p>
<pre><code>---
title: sublime
date: 2019-09-03 17:31:37
toc: true
mathjax: true
tags: 
- 技术
- 文本编辑器
categories:
- 技术
- sublime
---</code></pre>
<ul>
<li><p>分类frontmatter-categories</p>
<div id="frontmatter-categories">
<p>编辑文章的时候，直接在categories:项填写属于哪个分类，但如果分类是中文的时候，路径也会包含中文。</p>
</div>
<p>访问路径是：</p>
<p><code>*/categories/编程</code></p>
<p>想要把路径名和分类名分别设置，参见 <a href="#路径名和分类名分别设置需要怎么办呢">路径名和分类名分别设置，需要怎么办呢？</a></p></li>
<li><p>标签frontmatter-tags</p>
<div id="frontmatter-tags">
<p>在编辑文章的时候，tags:后面是设置标签的地方，如果有多个标签的话，可以用下面两种办法来设置：</p>
</div>
<pre><code>tages: [标签1,标签2,...标签n]

tages: 
- 标签1
- 标签2
...
- 标签n</code></pre></li>
<li><p>文章摘要description:</p>
<p>首页默认显示文章摘要而非全文，可以在文章的front-matter中填写一项description:来设置你想显示的摘要，或者直接在文章内容中插入&lt;!--more--&gt;以隐藏后面的内容。</p>
<p>若两者都未设置，则自动截取文章第一段作为摘要。</p></li>
<li><p>添加页面 layout: 在source目录下建立相应名称的文件夹，然后在文件夹中建立index.md文件，并在index.md的front-matter中设置layout为layout: page。若需要单栏页面，就将layout设置为 layout: single-column。</p></li>
<li><p>文章目录frontmatter-toc:</p>
<div id="frontmatter-toc">
<p>在文章的front-matter中添加toc: true即可让该篇文章显示目录。</p>
</div></li>
<li><p>文章评论 comments:</p>
<p>文章和页面的评论功能可以通过在front-matter中设置comments: true或comments: false来进行开启或关闭（默认开启）。</p></li>
<li><p>数学公式frontmatter-mathjax:</p>
<div id="frontmatter-mathjax">
<p>要启用数学公式支持，请在Hexo目录的_config.yml中添加：</p>
</div>
<ol type="1">
<li><p>mathjax: true</p>
<p>并在相应文章的front-matter中添加mathjax: true，例如：</p>
<pre><code>title: Test Math
date: 2016-04-05 14:16:00
categories: math
mathjax: true
---</code></pre>
<p>数学公式的默认定界符是 <span class="title-ref">$$...$$和\[...\]（对于块级公式），以及$...$和\(...\) （对于行内公式）</span> 。</p></li>
<li><p>mathjax2: true</p>
<p>但是，如果你的文章内容中经常出现美元符号“$”, 或者说你想将“$”用作美元符号而非行内公 式的定界符，请在Hexo目录的_config.yml中添加：</p>
<p>而不是mathjax: true。 相应地，在需要使用数学公式的文章的front-matter中也添加mathjax2: true。</p></li>
</ol></li>
<li><p>donate: donate:</p>
<p>enable: false ## If you want to show the donate button after each post, please set the value to true and fill the following items according to your need. You can also enable donate button in a page by adding a "donate: true" item to the front-matter.</p></li>
<li><p>timeline: (layout: timeline)</p>
<p>网站历史时间线，在页面front-matter中设置layout: timeline可显示。</p></li>
</ul>
<h3 id="hexo-editor-编辑器有哪些">hexo editor 编辑器有哪些？</h3>
<ul>
<li><p>Markdown 工具 HexoEditor</p>
<p><a href="https://www.v2ex.com/amp/t/421246">一款清新的 Markdown 工具 HexoEditor，重要的是支持 Hexo 框架</a></p>
<p><a href="https://github.com/zhuzhuyule/HexoEditor">github repo-hexo editor</a></p></li>
</ul>
<h3 id="怎么使用-yeoman-生成基础代码">怎么使用 yeoman 生成基础代码？</h3>
<p>现在开始项目之前，我都会搜索一下 yeoman 有没有库，生成 Hexo 主题就有 generator-hexo-theme 。如果还没有安装 yeoman ，那先用 npm 全局安装。</p>
<pre><code>npm i -g yo</code></pre>
<p>安装生成器的库：</p>
<pre><code>npm i -g generator-hexo-theme</code></pre>
<p>到博客目录下，进入到 themes 目录，创建一个用主题名命名的新文件夹，比如test，进入新文件夹，开始生成代码：</p>
<pre><code>yo hexo-theme</code></pre>
<p>然后选择一些基本的配置，比如使用什么模板引擎，使用什么 CSS 预编译等，这里分别选择 Swig 和 Stylus。完成之后，主题目录下就会生成一些如下结构的文件：</p>
<pre><code>├── _config.yml // 主题配置文件
├── languages // 多语言文件夹
├── layout
│   ├── archive.swig // 存档页模板
│   ├── category.swig // 分类文章列表页模板
│   ├── includes // 各页面共享的模板
│   │   ├── layout.swig // 页面布局模板，其它的页面模板都是根据它扩展来的
│   │   ├── pagination.swig // 翻页按钮模板
│   │   └── recent-posts.swig // 文章列表模板
│   ├── index.swig // 首页模板
│   ├── page.swig // 页面详情页模板
│   ├── post.swig // 文章详情页模板
│   └── tag.swig // 标签文章列表页模板
└── source
    ├── css
    │   └── theme.styl // 主题自定义 CSS 文件
    ├── favicon.ico
    └── js
        └── theme.js // 主题 JavaScript 文件
在Hexo的主配置文件中使用新主题，到博客根目录下找到 _config.yml 文件，找到theme行，修改如下：</code></pre>
<p>theme: test</p>
<p>hexo s 启动博客，到浏览器看效果。</p>
<h2 id="faq">FAQ</h2>
<h3 id="hexo网站名中文乱码">Hexo网站名中文乱码</h3>
<p>因为站点配置文件没有使用utf-8编码造成的，所以在站点配置文件_config.yml中写中文网站名，然后把站点配置文件保存为utf-8格式。</p>
<pre><code>title: 岁月留痕
subtitle: kevinluo&#39;s BLOG</code></pre>
<h3 id="怎么列出hexo依赖插件的完整性">怎么列出hexo依赖插件的完整性？</h3>
<pre><code>npm ls --depth 0</code></pre>
<p>klBlog:</p>
<pre><code>hexo-site@0.0.0 H:\tmp_H\001.work\004.env\01prjsp\hexo\klBlog
+-- eslint@6.3.0
+-- hexo@3.9.0
+-- hexo-deployer-git@1.0.0
+-- hexo-filter-flowchart@1.0.4
+-- hexo-generator-archive@0.1.5
+-- hexo-generator-category@0.1.3
+-- hexo-generator-feed@2.0.0
+-- hexo-generator-index@0.2.1
+-- hexo-generator-tag@0.2.0
+-- hexo-renderer-ejs@0.3.1
+-- hexo-renderer-jade@0.4.1
+-- hexo-renderer-marked@2.0.0
+-- hexo-renderer-pug@0.0.5
+-- hexo-renderer-sass@0.4.0
+-- hexo-renderer-stylus@0.3.3
+-- hexo-server@0.3.3
+-- hexo-wordcount@6.0.1</code></pre>
<h3 id="路径名和分类名分别设置需要怎么办呢">路径名和分类名分别设置，需要怎么办呢？</h3>
<p>设置分类名可以在文章中设置 <a href="">frontmatter-categories</a>:</p>
<p>打开根目录下的配置文件_config.yml，找到如下位置做更改：</p>
<pre><code># Category &amp; Tag
default_category: uncategorized
category_map:
    编程: programming
    生活: life
    其他: other
tag_map:</code></pre>
<p>在这里category_map:是设置分类的地方，每行一个分类，冒号前面是分类名称，后面是访问路径。</p>
<p>可以提前在这里设置好一些分类，当编辑的文章填写了对应的分类名时，就会自动的按照对应的路径来访问。</p>
<h3 id="package.json是什么">package.json是什么？</h3>
<p><a href="http://www.fly63.com/article/detial/1070">package.json是什么？</a></p>
<p><a href="https://blog.csdn.net/weixin_44051815/article/details/88114480">关于项目中package.json的理解</a></p>
<h3 id="fontawesome是什么">fontawesome是什么？</h3>
<p><a href="https://github.com/FortAwesome/Font-Awesome">github Font-Awesome lib</a></p>
<p><a href="http://fontawesome.dashgame.com/">一套绝佳的图标字体库和CSS框架</a></p>
<h3 id="怎么添加点击红心和汉字">怎么添加点击红心和汉字？</h3>
<ol type="1">
<li><p>js文件</p>
<pre><code>/themes/next/source/js/
hanzi.js 
clicklove.js</code></pre></li>
<li><p>页面文件</p>
<pre><code>KL+TEST
{%- if theme.kl_click_hanzi %}
      &lt;script src=&quot;//lib.baomitu.com/jquery/3.4.0/jquery.min.js&quot;&gt;&lt;/script&gt;
      &lt;!-- 页面点击汉字 --&gt;
      &lt;script type=&quot;text/javascript&quot; src=&quot;/js/hanzi.js&quot;&gt;&lt;/script&gt;
{%- endif %}
{%- if theme.kl_click_love %}
      &lt;!-- 页面点击小红心 --&gt;
      &lt;script type=&quot;text/javascript&quot; src=&quot;/js/clicklove.js&quot;&gt;&lt;/script&gt;
{%- endif %}
&lt;/body&gt;</code></pre>
<p>next 中应该用root相对路径，当root在子目录中，这样JS也可以引用到, <code>\klBlog\themes\next\layout\_layout.swig</code></p>
<pre><code>{%- if theme.kl_click_hanzi %}
      &lt;script src=&quot;//lib.baomitu.com/jquery/3.4.0/    jquery.min.js&quot;&gt;&lt;/script&gt;
      &lt;!-- 页面点击汉字 --&gt;
      {{- next_js(&#39;hanzi.js&#39;) }}
{%- endif %}
{%- if theme.kl_click_love %}
      &lt;!-- 页面点击小红心 --&gt;
      {{- next_js(&#39;clicklove.js&#39;) }}
{%- endif %}</code></pre></li>
</ol>
<h3 id="国内jquery-cdn-有哪些">国内Jquery CDN 有哪些？</h3>
<ol type="1">
<li><p>新浪CDN（推荐）</p>
<p>一直好使</p>
<pre><code>&lt;script src=&quot;http://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js&quot;&gt;
&lt;/script&gt;</code></pre></li>
<li><p>Baidu CDN 有时候不好使</p>
<pre><code>&lt;script src=&quot;http://libs.baidu.com/jquery/1.10.2/jquery.min.js&quot;&gt;
&lt;/script&gt;</code></pre></li>
<li><p>微软CDN:</p>
<pre><code>&lt;script src=&quot;http://ajax.htmlnetcdn.com/ajax/jQuery/jquery-1.10.2.min.js&quot;&gt;
&lt;/script&gt;</code></pre></li>
</ol>
<h3 id="怎么解决githubpages不能识别下划线开头的目录">怎么解决githubpages不能识别下划线开头的目录？</h3>
<p><a href="https://blog.csdn.net/lineuman/article/details/89600484">githubpages不能识别下划线开头的目录解决方法</a></p>
<p>使用sphinx创建的文档，资源文件夹前面会带着下划线，本地使用没有问题，提交到github上面，想使用github pages的时候提示404，原因为github pages的jekyll模版会忽略下划线开头的文件，自动忽略下划线开头的目录，从而导致引用不到CSS,JAVASCRIPT,ETC.，所以要禁用jekyll</p>
<p>禁用方法就是在文件在项目目录下添加.nojekyll文件</p>
<p>CDN</p>
<p><a href="https://cdn.baomitu.com/">CDN前端静态资源库baomitu-used in maupassant-hexo</a></p>
<p><a href="https://75team.com/cate/75cdn">75CDN奇舞团</a></p>
<h2 id="hexo-deploy-网站部署">hexo deploy 网站部署</h2>
<p>参见 <a href="https://www.jianshu.com/p/efaf72aab32e">Hexo博客从搭建部署到SEO优化等详细教程</a></p>
<h3 id="hexo-d-法">hexo d 法</h3>
<p><a href="https://hexo.io/docs/deployment.html">hexo.io/docs/deployment</a></p>
<p>安装扩展：</p>
<pre><code>$ npm install hexo-deployer-git --save</code></pre>
<p>需要在配置文件_config.xml中作如下修改：</p>
<pre><code>deploy:
  type: git
  repo: git@github.com:jiji262/jiji262.github.io.git
  branch: master
然后在命令行中执行

hexo d</code></pre>
<p>密码输入形式</p>
<pre><code>deploy:
  type: git
  repo: https://kevinluolog:xxxxxx[密码]@github.com/kevinluolog/   kevinluolog.github.io.git
  branch: master

#  repo: git@github.com:kevinluolog/kevinluolog.github.io.git

#例如你的账号为:crown3,密码为 BBB;
#那你的repo填写为下面这样即可
#github: https://crown3:BBB@github.com/crown3/crown3.github.io.git
#coding: https://crown3:BBB@git.coding.net/crown3/仓库名.git</code></pre>
<h3 id="直接git-clone-法">直接git clone 法</h3>
<h3 id="ci-法">CI 法，</h3>
<p><a href="git@github.com:kevinluolog/hexo_klblog.git">hexo_klblog</a></p>
<p>这个网址里面提到了常用的持续集成CI工具:</p>
<p><a href="https://www.cnblogs.com/selimsong/p/9398738.html">好代码是管出来的——使用GitHub实现简单的CI/CD</a></p>
<p><a href="https://blog.csdn.net/Xiong_IT/article/details/78675874">Hexo遇上Travis-CI：可能是最通俗易懂的自动发布博客图文教程</a></p>
<p><a href="https://yq.aliyun.com/articles/675660">GitHub的CI/CD与Travis配置小记</a></p>
<h4 id="十大ci工具">十大CI工具:</h4>
<pre><code>Travis CI
Circle CI
Jenkins
AppVeyor
CodeShip
Drone
Semaphore CI
Buildkite
Wercker
TeamCity</code></pre>
<h4 id="travis-ci">travis CI：</h4>
<p>Travis可以执行多种语言的测试及构建， <a href="https://docs.travis-ci.com/user/languages/">官方文档</a></p>
<p><a href="https://docs.travis-ci.com/user/job-lifecycle">Build Lifecycle documentation</a></p>
<h5 id="travis-ci-配置步骤">travis CI 配置步骤:</h5>
<p>那既然需要使用travis自动化更新你的博客，travis自然需要读写你的github上的repo。github提供了token机制来供外部访问你的仓库。</p>
<p><a href="https://github.com/settings/tokens">https://github.com/settings/tokens</a></p>
<ol type="1">
<li><p>安装 travis, 并授权管理repo</p>
<p>marketplace搜索travis,并安装。</p>
<p>github/{user name}/personal settings/application/ travis CI configure 选择要travis管理的repo.</p></li>
<li><p>配置github token</p>
<p>分三步，</p>
<pre><code>step 1: 在github中生成token，
        github/{user name}/-&gt; setting-&gt;Developer settings-&gt; Personal access tokens -&gt; generate new token
step 2: 再在travis网页项目中配置环境变量$GH_TOKEN，填入token
step 3: 在blog root _config.yml deploy 中，设置gh_token访问标记
step 4: 在.travis.yml中，在编译完后，deploy之前用sed替换，step 3 中在 _confi.yml 中的gh_token访问标记，用真正的保存在环境变量中的token替换掉。这样做的目的只是为了保密。一般repo是public的，就会泄漏token.</code></pre></li>
<li><p>配置travis</p>
<p>在travis进入仓库同步管理, <a href="https://travis-ci.com/kevinluolog/hexo-klblog-src/settings">here</a></p>
<p>主要是前面的gh-token环境变量.</p></li>
<li><p>在源码仓库根目录增加.travis.yml 修改 _config.yml</p>
<ul>
<li><p>增加 .travis.yml</p>
<p>直接git法</p>
<dl>
<dt>::</dt>
<dd><ul>
<li>git clone -b gh-pages <a href="https://$GH_TOKEN_FULL@github.com/kevinluolog/gp-memo.git">https://$GH_TOKEN_FULL@github.com/kevinluolog/gp-memo.git</a></li>
</ul>
</dd>
</dl>
<p>hexo deploy法，用sed修改hexo _config.yml 中的deploy命令</p>
<p>注意，如果源码是在分支上要修改branches为相应的分支名，缺省是master:</p>
<pre><code>### for branch of hexo-next-muse

# 指定语言环境
language: node_js
# 指定需要sudo权限
sudo: required
# 指定node_js版本
node_js: 
  - 10.16.3
# 指定缓存模块，可选。缓存可加快编译速度。
cache:
  directories:
    - node_modules

# 指定博客源码分支，因人而异。hexo博客源码托管在独立repo则不用设置此项
branches:
  only:
    - hexo-next-muse 

before_install:
  - npm install -g hexo-cli

# Start: Build Lifecycle
install:
  - npm install
  - npm install hexo-deployer-git --save

# 执行清缓存，生成网页操作
script:
  - hexo clean
  - hexo generate

# 设置git提交名，邮箱；替换真实token到_config.yml文件，最后depoy部署
after_script:
  - git config user.name &quot;kevinluolog&quot;
  - git config user.email &quot;kevinluolog_72@163.com&quot;
  # 替换同目录下的_config.yml文件中gh_token字符串为travis后台刚才配置的变量，注意此处sed命令用了双引号。单引号无效！
  - sed -i &quot;s/gh_token/${GH_TOKEN}/g&quot; ./_config.yml
  - hexo deploy
# End: Build LifeCycle

_config.yml中的代码如下：
deploy:
type: git
repo: https://gh_token@github.com/kevinluolog/        kevinluolog.github.io.git  
branch: master  </code></pre></li>
<li><p>修改 _config.yml</p>
<p>1. 主要是修改deploy部分，决定gh-token和推送部署到什么repo的什么分支。 如果是xxxx.github.io就推到master, 如果是子目录repo,则推送到gh-pages分支。</p>
<ol start="2" type="1">
<li>设置 root变量， 如果是子目录repo，则需要设置相应的子目录repo名字。这样在网页引用css等资源时可以直接引用到。因为hexo引用CSS等资源时用的是绝对目录，如/{子目录repo名}/css/xxx.css, sphinx 用的是相对目录，如 _static/css/xxx.css。 此处因为sphinx资源目录前面带了下划线， _ , 因hexo和jekyll会自动忽略下划线开头的目录，从而导致引用不到CSS,JAVASCRIPT,ETC.，所以在根目录要添加.nojekyll文件, 详细请参考 <a href="#怎么解决githubpages不能识别下划线开头的目录">怎么解决githubpages不能识别下划线开头的目录？</a></li>
</ol>
<pre><code>root: /hexo-next-muse/
# Deployment
deploy:
  type: git
  repo: https://gh_token@github.com/kevinluolog/hexo-next-muse.git  
  branch: gh-pages                                                      </code></pre></li>
</ul></li>
</ol>
<h4 id="travis-ci-配置实例">travis CI 配置实例</h4>
<p>网站规划结构参见 <a href="#my-deploy-kevinluolog.github.io">my deploy: kevinluolog.github.io</a></p>
<p>简单讲就是，kevinluolog/hexo-klblog-src repo作为源码仓库，master分支对应主网站repo的master分支，其余分支各对应主网站的子目录网站repo的gp-pages分支。源码repo分支名称和子目录网站的仓库名要取得一样，以方便对应。每次源码有推送时，触发对应分支的travis CI启动，源码拉取-&gt;环境搭建-&gt;编译-&gt;部署，部署时是部署到对应的网站repo的gp-pages分支上的。</p>
<p>最终的效果是，写或修改文章时只和source目录中的_post目录相关 <code>\hexo\klBlog\source\_posts</code> 改动完成提交到对应的分支后， 过2分钟左右， 对应的网站即要自动更新。非常方便和快捷，不用占用本人的时间也不用占用本机的CPU去编译和部署。同时可以的任何可以上网的地方写文章，提交。 和写程序一模一样，一个github搞定一切。</p>
<h5 id="创建源码新分支需要改动的文件">创建源码新分支需要改动的文件</h5>
<ol type="1">
<li><p>文件.travis.yml</p>
<p>启动分支名。</p>
<pre><code># 指定博客源码分支，因人而异。hexo博客源码托管在独立repo则不用设置此项
branches:
  only:
    - hexo-next-xxx</code></pre></li>
<li><p>文件_config.yml</p>
<ul>
<li><p>theme</p>
<pre><code>theme: next</code></pre></li>
<li><p>root, 子网站根目录，要和网站repo名字相同</p>
<pre><code>root: /hexo-next-xxx/</code></pre></li>
<li><p>deloy, 推送目标仓库名</p>
<pre><code>deploy:
  type: git
  repo: https://gh_token@github.com/kevinluolog/hexo-next-xxx.git
  branch: gh-pages</code></pre></li>
</ul></li>
<li><p>其它博客定制相关文件</p>
<p>如theme下配置文件_config.yml，next和melody支持独立配置文件在_data/next.yml 和 melody.yml</p>
<ol type="i">
<li>_data/next.yml
<ul>
<li><p>风格</p>
<pre><code># Schemes
#scheme: Muse
#scheme: Mist ##kl+  
#scheme: Pisces
scheme: Gemini</code></pre></li>
</ul></li>
</ol></li>
</ol>
<h3 id="需求在github-pages子目录建立hexo博客">需求：在github pages子目录建立hexo博客</h3>
<p><a href="https://www.jianshu.com/p/986b975a29ae">在githubpages子目录建立hexo博客</a></p>
<p>实现：</p>
<ol type="1">
<li>首先建立xxx.github.io的repo，xxx是你的用户名，之后开启github pages服务</li>
<li>再建立一个bbbb的repo，bbbb是你想要的子目录</li>
<li>设置hexo的deploy配置文件 _config.yml</li>
</ol>
<pre><code>- type: git
  repo: https://github.com/xxx/bbbb.git
  branch: gh-pages</code></pre>
<ol start="4" type="1">
<li>修改_config.yml中的root选项，由"/"改为"/bbbb"</li>
</ol>
<p>github page就大概两种，一种user page必须master分支，另一种project page需要给对应的project设置一个gh-pages分支，上传好网页资源文件之后，就可以在username.github.io/projectname这样的域名访问了。</p>
<p>网上挺多教程都不太对，自己解决了之后记录一下。</p>
<h3 id="my-deploy-kevinluolog.github.io">my deploy: kevinluolog.github.io</h3>
<h4 id="repo-of-sites">Repo of sites:</h4>
<ol type="1">
<li><p>kevinluolog.github.io: branch:master</p>
<p>generated by travis Ci from repo of hexo source - branch of master</p></li>
<li><p>hexo-XXX: branch:gh-pages</p>
<p>can be accessed by <code>kevinluolog.github.io/hexo-xxx</code></p>
<p>generated by travis Ci from repo of hexo source - branch of hexo-XXX</p></li>
<li><p>gp: branch:gh-pages</p>
<p>can be accessed by <code>kevinluolog.github.io/gp/xxx</code></p>
<p>generated by sphinx etc. directly</p></li>
</ol>
<h4 id="repo-of-hexo-source-private">Repo of hexo source: private</h4>
<p>Travis can access with private repo.</p>
<ul>
<li><p>branch: master</p>
<p>hexo source, and deploy to kevinluolog.github.io - master automatically</p></li>
<li><p>branch: hexo-xxx</p>
<p>deploy to REPO：hexo-xxx - gh-pages, automatically.</p>
<p>branch _config.yml for set differrent theme</p>
<p>travis-ci triggered by source file merged in. then compile and deploy.</p>
<p>books, created by sphinx or docutils or pandoc.</p></li>
</ul>
