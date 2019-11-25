---
title: gitpage
tag: 
- 自动生成
- 笔记
categories:
- 001.网站
toc: TRUE
---
<h1 id="gitpages">gitpages</h1>
<div class="contents">
<p>contents</p>
</div>
<div class="section-numbering">

</div>
<h2 id="travis-ci-kevinluolog">Travis Ci-kevinluolog</h2>
<h3 id="travis-ci-repo-关系">travis ci repo 关系</h3>
<p>序号 <a href="mailto:触发仓@分支">触发仓@分支</a> <a href="mailto:源仓@分支">源仓@分支</a> <a href="mailto:输出仓@分支">输出仓@分支</a></p>
<h4 id="kevinluologkdoc.git-push触发">kevinluolog/kdoc.git push触发</h4>
<h5 id="触发仓输出仓关系">触发仓/输出仓关系</h5>
<table style="width:99%;">
<colgroup>
<col style="width: 25%" />
<col style="width: 29%" />
<col style="width: 44%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="mailto:触发仓@分支">触发仓@分支</a></th>
<th><a href="mailto:源仓@分支">源仓@分支</a></th>
<th><a href="mailto:输出仓@分支">输出仓@分支</a></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="mailto:kdoc@dev">kdoc@dev</a></td>
<td><a href="mailto:kdoc@dev">kdoc@dev</a></td>
<td><a href="mailto:travisci_out_kdoc@output">travisci_out_kdoc@output</a></td>
</tr>
<tr class="even">
<td><a href="mailto:kdoc@dev">kdoc@dev</a></td>
<td><a href="mailto:kdoc@dev">kdoc@dev</a></td>
<td><a href="mailto:hexo-klblog-src@x5个分支">hexo-klblog-src@x5个分支</a></td>
</tr>
<tr class="odd">
<td><a href="mailto:kdoc@dev">kdoc@dev</a></td>
<td><a href="mailto:tran002memo@master">tran002memo@master</a></td>
<td><a href="mailto:travisci_out_kdoc@tran002memo">travisci_out_kdoc@tran002memo</a></td>
</tr>
<tr class="even">
<td><a href="mailto:kdoc@dev">kdoc@dev</a></td>
<td><a href="mailto:tran003post@master">tran003post@master</a></td>
<td><a href="mailto:travisci_out_kdoc@tran003post">travisci_out_kdoc@tran003post</a></td>
</tr>
<tr class="odd">
<td><a href="mailto:kdoc@dev">kdoc@dev</a></td>
<td><a href="mailto:tran004book@master">tran004book@master</a></td>
<td><a href="mailto:travisci_out_kdoc@tran004book">travisci_out_kdoc@tran004book</a></td>
</tr>
<tr class="even">
<td><a href="mailto:tran005work@xxx">tran005work@xxx</a></td>
<td>~</td>
<td><a href="mailto:travisci_out_005work@xxx">travisci_out_005work@xxx</a></td>
</tr>
<tr class="odd">
<td><a href="mailto:tran006tmp@xxx">tran006tmp@xxx</a></td>
<td>~ pdf html slide</td>
<td><a href="mailto:travisci_out_006tmp@xxx">travisci_out_006tmp@xxx</a></td>
</tr>
</tbody>
</table>
<p>xxx表示：dev=all pdf=pdf html=html slide=slide</p>
<h5 id="完成功能">完成功能：</h5>
<p>代码参考 根目录travis.yml</p>
<h6 id="rst-转成-.html">.rst 转成 .html;</h6>
<ul>
<li><p>用sphinx生成：</p>
<pre><code>sphinx-build -b html $TRAVIS_BUILD_DIR/003work/006tmp $TRAVIS_BUILD_DIR/output/sphinx/build-post</code></pre>
<pre><code>.html输出到本地output目录： `/output/sphinx/build-memo/*` 
.html输出到本地output目录： `/output/sphinx/build-post/*` </code></pre></li>
<li><p>用git deploy：</p>
<pre><code>git add -A; 
git commit --allow-empty -m &quot;&quot;
git push</code></pre>
<pre><code>输出到=&gt;repo0: `github.com/kevinluolog/travisci_out_kdoc@dev`
002memo=&gt;deploy到WWWrepo3: `github.com/kevinluolog/gp-memo@gh-pages`
006tmp=&gt;deploy到WWWrepo4: `github.com/kevinluolog/gp-post@gh-pages`</code></pre></li>
</ul>
<p class="heading" id="kdoc发布-网站地址">kdoc发布 网站地址：</p>
<ol type="1">
<li><a href="http://kevinluolog.github.io/gp-memo">kevinluolog.github.io gp-memo 002memo</a></li>
<li><a href="http://kevinluolog.github.io/gp-memo">kevinluolog.github.io gp-post 002post</a></li>
</ol>
<h6 id="rst-转成-hexo输入的-.md添加frontmatter信息如tagcategory">.rst 转成 hexo输入的 .md;(添加frontmatter信息，如tag,category)</h6>
<ul>
<li><p>用makefile + pandoc生成：</p>
<p>详细参考 <span class="title-ref">kdoc/003work/000tools/002makefiles/001pandoc/linux/Makefile</span></p>
<pre><code>make startconv -f $TRAVIS_BUILD_DIR/003work/000tools/002makefiles/001pandoc/linux/Makefile DIR_BASE_SRC=$TRAVIS_BUILD_DIR/003work/006tmp DIR_BASE_OBJ=$TRAVIS_BUILD_DIR/output/pandoc/hexomd/006tmp DIR_BASE_COPYTO= SUFFIX_FROM=.rst SUFFIX_TO=.md DIR_TEMPLATE=$T_DIR_TEMPLATE ADD_HEXO_TAG_FROM_DIR=post+ CTL_TOC=TRUE

make startconv -f $TRAVIS_BUILD_DIR/003work/000tools/002makefiles/001pandoc/linux/Makefile DIR_BASE_SRC=$TRAVIS_BUILD_DIR/003work/006tmp DIR_BASE_OBJ=$TRAVIS_BUILD_DIR/output/pandoc/html/006tmp DIR_BASE_COPYTO= SUFFIX_FROM=.rst SUFFIX_TO=.html DIR_TEMPLATE=$T_DIR_TEMPLATE ADD_HEXO_TAG_FROM_DIR=</code></pre>
<pre><code>.md输出到本地output目录： `/output/pandoc/hexomd/002memo/*` 
.md输出到本地output目录： `/output/pandoc/hexomd/006tmp/*` </code></pre></li>
<li><p>用git deploy：</p>
<pre><code>git add -A; 
git commit --allow-empty -m &quot;&quot;
git push</code></pre>
<pre><code>输出到=&gt;repo1: `github.com/kevinluolog/travisci_out_kdoc@dev`
002memo=&gt;deploy到repo2-(@b1:b5): `hexo-klblog-src/source/_posts/kl_notes/   002memo@xxx`
006tmp=&gt;deploy到repo2-(@b1-b5): `hexo-klblog-src/source/_posts/kl_notes/   002memo@xxx`
xxx:分支 = 
     master
     hexo-next-Gemini :注意大写，linux下大小写敏感
     hexo-next-muse
     hexo-next-Pisces :注意大写，linux下大小写敏感
     hexo-maup</code></pre>
<p>deploy到rep:kevinluolog/hexo-klblog-src.git后，各分支会继续触发travis CI，把各分支上的hexo源码，编译成网站并deploy到对应的WWWrepoXXX的github分支(以repo2（kevinluolog/hexo-klblog-src.git）的分支名字命名)-分别对应repo2-(b1:b5)，和主网站repo。 详细参考 <a href="#kevinluologhexo-klblog-src.git-push触发">kevinluolog/hexo-klblog-src.git push触发</a></p></li>
</ul>
<h5 id="输出output目录结构">输出output目录结构</h5>
<pre><code>.html：由sphinx产生
/output/sphinx/build-memo/*
/output/sphinx/build-post/*

.md hexo：由Makefile 产生, pandoc.exe
makefile位于/kdoc/003work/000tools/002makefiles/001pandoc/linux/
/output/pandoc/hexomd/002memo
/output/pandoc/hexomd/006tmp</code></pre>
<p>hexo源码仓库中的_posts来源，是上面output目录中的pandoc/hexomd目录中的002memo和006tmp. 先clone下来，用rm删除002meo和006tmp,再用cp从hexomd中copy过来。</p>
<h4 id="kevinluologhexo-klblog-src.git-push触发">kevinluolog/hexo-klblog-src.git push触发</h4>
<p>代码参考 根目录travis.yml</p>
<h5 id="触发仓输出仓关系-1">触发仓/输出仓关系</h5>
<p>~：表示和前面的 <a href="mailto:触发仓@分支">触发仓@分支</a> 一样</p>
<div class="line-block">master<br />
hexo-next-Gemini :注意大写，linux下大小写敏感<br />
hexo-next-muse<br />
hexo-next-Pisces :注意大写，linux下大小写敏感<br />
hexo-maup</div>
<table>
<colgroup>
<col style="width: 8%" />
<col style="width: 41%" />
<col style="width: 14%" />
<col style="width: 36%" />
</colgroup>
<thead>
<tr class="header">
<th>序号</th>
<th><a href="mailto:触发仓@分支">触发仓@分支</a></th>
<th><a href="mailto:源仓@分支">源仓@分支</a></th>
<th><a href="mailto:输出仓@分支">输出仓@分支</a> gitpage</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>01</td>
<td><a href="mailto:hexo-klblog-src@master">hexo-klblog-src@master</a></td>
<td>~</td>
<td><a href="mailto:kevinluolog.github.io@master">kevinluolog.github.io@master</a></td>
</tr>
<tr class="even">
<td>02</td>
<td><a href="mailto:hexo-klblog-src@hexo-next-Gemini">hexo-klblog-src@hexo-next-Gemini</a></td>
<td>~</td>
<td><a href="mailto:hexo-next-gemini@gh-pages">hexo-next-gemini@gh-pages</a></td>
</tr>
<tr class="odd">
<td>03</td>
<td><a href="mailto:hexo-klblog-src@hexo-next-muse">hexo-klblog-src@hexo-next-muse</a></td>
<td>~</td>
<td><a href="mailto:hexo-next-muse@gh-pages">hexo-next-muse@gh-pages</a></td>
</tr>
<tr class="even">
<td>04</td>
<td><a href="mailto:hexo-klblog-src@hexo-next-Pisces">hexo-klblog-src@hexo-next-Pisces</a></td>
<td>~</td>
<td><a href="mailto:hexo-next-Pisces@gh-pages">hexo-next-Pisces@gh-pages</a></td>
</tr>
<tr class="odd">
<td>05</td>
<td><a href="mailto:hexo-klblog-src@hexo-maup">hexo-klblog-src@hexo-maup</a></td>
<td>~</td>
<td><a href="mailto:hexo-maup@gh-pages">hexo-maup@gh-pages</a></td>
</tr>
</tbody>
</table>
<h5 id="完成功能-1">完成功能：</h5>
<p>代码参考 根目录travis.yml</p>
<h6 id="错误时间.md-转成-正确时间.md">错误时间.md 转成 正确时间.md</h6>
<p>详细代码参见 <span class="title-ref">/MakefileLinuxkblog.mk /travis.yml</span></p>
<p>影响网站文章时间排序。最终实现正确排序，同时还需要hexo的渲染前的hook配合,把date时间，改成文件的修改时间。</p>
<p>时间传递路径为， 渲染用的文件创建日期post.date &lt;3= post.updated &lt;2= 文件的mtime &lt;1= 文件的首次commit时间。</p>
<p>第&lt;1=次转换 详细代码参见 <span class="title-ref">/MakefileLinuxkblog.mk /travis.yml</span> 利用 <span class="title-ref">git log --date=iso --format="%ad" -- ""</span> 获取历史commit时间数据, <span class="title-ref">tail -1</span> 获取首次commit时间， <span class="title-ref">touch -c -data "" -m</span> 设置mtime</p>
<p>第&lt;2=次转换 hexo编译渲染时自己读取文件时间产生，尚不知在什么module里做的。</p>
<p>第&lt;3=次转换 详细代码参见 <span class="title-ref">/klBlog/themes/next/scripts/filters/kl-touch-file-time.js</span> 利用 hexo钩子before_post_render 替换。</p>
<ul>
<li><p>用makefile + shell脚本 + git命令生成：</p>
<p>详细代码参考 <span class="title-ref">/MakefileLinuxkblog.mk</span></p>
<p>makefile</p>
<pre><code>make touch1 -f MakefileLinuxkblog.mk DIR_BASE_SRC=$TRAVIS_BUILD_DIR/source/_posts</code></pre>
<p>或纯脚本,单行即可。</p>
<pre><code>git ls-files -z --eol | sed -e &quot;s/i\\/lf[ \\t]*w\\/lf[ \\t]*attr\\/[ \\t]*/\\n/g&quot; | while read filename; do git log --date=iso --format=&quot;%ad&quot; -- &quot;$TRAVIS_BUILD_DIR/source/_posts/$filename&quot; | tail -1 | xargs -I{} touch -c $filename --date=&quot;{}&quot; -m; done</code></pre></li>
</ul>
<h6 id="正确时间.md-转成-网站.html">正确时间.md 转成 网站.html;</h6>
<p>详细代码参考 <span class="title-ref">/travis.yml /_config.yml</span></p>
<p>deploy到rep:kevinluolog/hexo-klblog-src.git后，各分支会继续触发travis CI，把各分支上的hexo源码，编译成网站并deploy到对应的WWWrepoXXX的github分支(以repo2（kevinluolog/hexo-klblog-src.git）的分支名字命名)-分别对应repo2-(b1:b5)，和主网站repo。</p>
<ul>
<li><p>用hexo g 生成</p>
<p>自动把 <span class="title-ref">/hexo/klBlog/source/_posts</span> 目录中的 .md 生成hexo静态网页</p>
<pre><code>hexo clean
hexo generate</code></pre></li>
<li><p>用hexo deploy <a href="mailto:发布到repo@gh-pages">发布到repo@gh-pages</a>。</p>
<pre><code>sed -i &quot;s/gh_token/${GH_TOKEN}/g&quot; ./_config.yml
hexo deploy</code></pre></li>
</ul>
<p class="heading" id="hexo-klblog-src发布-网站地址">hexo-klblog-src发布 网站地址：</p>
<ol type="1">
<li><a href="http://kevinluolog.github.io">kevinluolog.github.io master</a></li>
<li><a href="http://kevinluolog.github.io/hexo-next-gemini">kevinluolog.github.io hexo-next-gemini</a></li>
<li><a href="http://kevinluolog.github.io/hexo-next-muse">kevinluolog.github.io hexo-next-muse</a></li>
<li><a href="http://kevinluolog.github.io/hexo-next-Pisces">kevinluolog.github.io hexo-next-Pisces</a></li>
<li><a href="http://kevinluolog.github.io/hexo-maup">kevinluolog.github.io hexo-maup</a></li>
</ol>
<h4 id="网站生成工作步骤">网站生成工作步骤:</h4>
<h5 id="目标写好即完成">目标：写好即完成</h5>
<p>目标是只要用sublime写好.rst文档，提交就可以直接在浏览器上看到写的东西了。即只要做完step1后,step 2,step3会自动完成，然后稍等即可以step4.</p>
<div class="line-block">step 1: 写文档 .rst<br />
step 2: .rst 2 .md(with hexo frontmatter)<br />
step 3: hexo编译成静态html,并发布到托管服务器<br />
stop 4: 用浏览器浏览网站</div>
<h5 id="数据流路径windown本地">数据流路径(windown本地):</h5>
<ol type="1">
<li><p>.rst 2 .md(with hexo frontmatter) (手动make)</p>
<p>目标：</p>
<pre><code>H:\\tmp_H\\001.work\\002git\\kdoc\\003work\\002memo
H:\\tmp_H\\001.work\\002git\\kdoc\\003work\\006tmp
=&gt;
H:\\tmp_H\\001.work\\004.env\\01prjsp\\hexo\\klBlog\\source\\_posts\\kl_notes
H:\\tmp_H\\001.work\\004.env\\01prjsp\\hexo\\klBlog\\source\\_posts\\kl_post</code></pre>
<p>command:</p>
<pre><code>H:\\tmp_H\\001.work\\002git\\kdoc\\003work\\000tools\\002makefiles\\001pandoc\\rst2md_hexo_copy2.bat

DIR_BASE_SRC=H:\\tmp_H\\001.work\\002git\\kdoc\\003work\\002memo ^
DIR_BASE_OBJ=H:\\tmp_H\\001.work\\004.env\\01prjsp\\04make\\01rst2md\\tmp2 ^
DIR_BASE_COPYTO=H:\\tmp_H\\001.work\\004.env\\01prjsp\\04make\\01rst2md\\copy2 ^

此.bat用了一个临时目录，用时需要手工从copy2目录拷贝到kl_note目录。当然可以把.bat中的，obj目录直接转为kl_notes目录，就可以直接一步修改。注意把copyto目录置空。</code></pre></li>
<li><p>提交 hexo编译并发布 （tracis CI 自动 ）</p>
<pre><code>tortioseGit: H:\\tmp_H\\001.work\\004.env\\01prjsp\\hexo\\klBlog\\
提交到 repo: hexo-klblog-src@master
触发travis CI 自动 hexo编译成静态html =&gt; kevinluolog.github.io@master</code></pre></li>
</ol>
<h5 id="数据流路径travis-全自动">数据流路径(travis 全自动):</h5>
<ol type="1">
<li><p>写文档。</p>
<p>【在clone下来的kdoc@dev子目录中(003work/002memo/* 003work/006tmp/*)】</p></li>
<li><p>提交推送。</p>
<p>【git add . ; git commit -m "" ; git push】</p></li>
<li><p><a href="mailto:触发kdoc@dev/travis.yml工作">触发kdoc@dev/travis.yml工作</a>，编译/002memo /006tmp/*文档内容。</p>
<p>详细参考 <a href="#kevinluologkdoc.git-push触发">kevinluolog/kdoc.git push触发</a></p></li>
<li><p><a href="mailto:触发hexo-klblog-src.git@xxx/travis.yml工作">触发hexo-klblog-src.git@xxx/travis.yml工作</a>，编译/source/_posts/文档内容。</p>
<p>详细参考 <a href="">kkevinluolog/hexo-klblog-src.git push触发</a></p></li>
<li><p>浏览发布网站地址 sphinx和hexo</p>
<p>参考 <a href="#kdoc发布-网站地址">kdoc发布 网站地址：</a> sphinx</p>
<p>参考 <a href="#hexo-klblog-src发布-网站地址">hexo-klblog-src发布 网站地址：</a> hexo</p></li>
<li><p>生成输出 repo地址</p>
<p><a href="https://github.com/travisci_out_kdoc/">kdoc的output输出仓库网址 travisci_out_kdoc</a></p></li>
</ol>
