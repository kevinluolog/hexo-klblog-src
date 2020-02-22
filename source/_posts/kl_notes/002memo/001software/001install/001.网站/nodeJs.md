---
title: nodeJs
tag: 
- 自动生成
- 001.网站
categories:
- 001.网站
toc: TRUE
---
<h1 id="node.js">node.JS</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="install">install</h2>
<p><a href="https://nodejs.org/en/">download here</a></p>
<h3 id="reference">reference</h3>
<p><a href="https://blog.csdn.net/antma/article/details/86104068">node.js 安装详细步骤教程</a></p>
<p><a href="https://www.liaoxuefeng.com/wiki/1022910821149312/1023025235359040">廖雪峰的官方网站Node.js来龙去脉教程</a></p>
<p>为什么NODEJS 基本命令 <a href="https://blog.csdn.net/a331790021/article/details/75661785">nodejs的整体安装与使用详细步骤！小白必读！</a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<h3 id="setting">setting</h3>
<h4 id="环境变量">环境变量</h4>
<p>msi安装版本已经配置PAHT， 非安装版，执行nodevars.bat</p>
<h4 id="配置npm在安装全局模块时的路径和缓存cache的路径">配置npm在安装全局模块时的路径和缓存cache的路径</h4>
<p>可以先用 <span class="title-ref">npm config ls -l</span> 看一下当前配置变量</p>
<p>非安装版，npm -g 安装module时，自动放到node_modules目录下面。</p>
<p><a href="https://blog.csdn.net/antma/article/details/86104068">node.js 安装详细步骤教程-重配全局模块下载目录</a></p>
<p>在执行例如npm install webpack -g等命令全局安装的时候，默认会将模块安装在 <span class="title-ref">C:Users用户名AppDataRoaming路径下的npm和npm_cache中</span> ，不方便管理且占用C盘空间</p>
<p>这里配置自定义的全局模块安装目录，在node.js安装目录下新建两个文件夹</p>
<ol type="1">
<li>node_global和node_cache，然后在cmd命令下执行如下两个命令：</li>
</ol>
<pre><code>npm config set prefix &quot;D:\Program Files\nodejs\node_global&quot;
npm config set cache &quot;D:\Program Files\nodejs\node_cache&quot;</code></pre>
<ol start="2" type="1">
<li><p>加入环境变量 NODE_PATH</p>
<p>环境变量 -&gt; 系统变量中新建一个变量名为 “NODE_PATH”， 值为“D:Program Filesnodejsnode_modules”</p></li>
<li><p>用户变量里的Path</p>
<p>编辑用户变量里的Path，将相应npm的路径改为：D:Program Filesnodejsnode_global</p></li>
<li><p>测试</p>
<p>在cmd命令下执行 <span class="title-ref">npm install webpack -g</span> 然后安装成功后可以看到自定义的两个文件夹已生效</p>
<p>webpack 也已安装成功，执行 npm webpack -v 可以看到所安装webpack的版本号</p></li>
</ol>
<h3 id="npm">npm</h3>
<h4 id="淘宝npm镜像安装">淘宝NPM镜像安装</h4>
<p><a href="http://npm.taobao.org/">淘宝NPM镜像安装</a></p>
<p>你可以使用我们定制的 cnpm (gzip 压缩支持) 命令行工具代替默认的 npm:</p>
<p>安装cnpm:</p>
<pre><code>$ npm install -g cnpm --registry=https://registry.npm.taobao.org</code></pre>
<p>使用：</p>
<pre><code>$ cnpm install [name]</code></pre>
<h4 id="help">help</h4>
<p>where &lt;command&gt; is one of:</p>
<blockquote>
<p>access, adduser, audit, bin, bugs, c, cache, ci, cit, clean-install, clean-install-test, completion, config, create, ddp, dedupe, deprecate, dist-tag, docs, doctor, edit, explore, get, help, help-search, hook, i, init, install, install-ci-test, install-test, it, link, list, ln, login, logout, ls, org, outdated, owner, pack, ping, prefix, profile, prune, publish, rb, rebuild, repo, restart, root, run, run-script, s, se, search, set, shrinkwrap, star, stars, start, stop, t, team, test, token, tst, un, uninstall, unpublish, unstar, up, update, v, version, view, whoami</p>
</blockquote>
<pre><code>npm &lt;command&gt; -h  quick help on &lt;command&gt;
npm -l            display full usage info
npm help &lt;term&gt;   search for help on &lt;term&gt;
npm help npm      involved overview

npm config ls -l</code></pre>
<h4 id="command">command</h4>
<h5 id="install-1">install</h5>
<p>npm install (in package directory, no arguments):</p>
<p>Install the dependencies in the local node_modules folder.</p>
<p>By default, npm install will install all modules listed as dependencies in package.json(5).</p>
<h3 id="哪里可以检索可以用npm安装的module">哪里可以检索可以用npm安装的module?</h3>
<p>象python package的pypi网站， sublime package的http://packagecontrol.io</p>
<p>??</p>
<h3 id="tips">tips</h3>
