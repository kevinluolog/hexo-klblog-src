---
title: travisCI
tag: 
- 自动生成
- 001.网站
categories:
- 001.网站
toc: TRUE
---
<h1 id="travis-ci">travis CI</h1>
<div class="contents">
<p>contents</p>
</div>
<div class="section-numbering">

</div>
<h2 id="install">install</h2>
<p><a href="https://travis-ci.com">travis website</a></p>
<h3 id="教程链接">教程链接</h3>
<p><a href="http://www.ruanyifeng.com/blog/2017/12/travis_ci_tutorial.html">持续集成服务TravisCI教程-阮一峰</a></p>
<p><a href="https://oncletom.io/2016/travis-ssh-deploy/">SSH deploys with Travis CI-frenchman</a></p>
<p><a href="https://docs.travis-ci.com/user/deployment/pages/">spec for deploy of github pages</a></p>
<p><a href="https://www.jianshu.com/p/8308b8f08de9">Travis Ci的最接地气的中文使用教程</a></p>
<p><a href=""></a></p>
<p><a href=""></a></p>
<h2 id="案例">案例</h2>
<h3 id="gcc-c">gcc c</h3>
<p>同时我们需要在仓库中编写一份名为.travis.yml的配置文件，来指定我们的项目需要进行怎样的操作。</p>
<pre><code>sudo: required
language: c
complier: gcc
before_script: sudo apt-get install libev-dev
script: make
notifications:
  email:
    recipients:
      - xxx@gmail.com
    on_success: change
    on_failure: always</code></pre>
<p>可以看到这里指定了需要的sudo权限，编程语言，编译器，script即执行的操作，before_script则安装了项目依赖的libev-dev包，通知的方式email，并且指定了邮件地址。</p>
<h3 id="official-deploy-spec">official deploy spec</h3>
<p>For a minimal configuration, add the following to your .travis.yml:</p>
<pre><code>deploy:
  provider: pages
  skip_cleanup: true
  github_token: $GITHUB_TOKEN  # Set in the settings page of your repository,    as a secure variable
  keep_history: true
  on:
    branch: master</code></pre>
<p>Make sure you have skip_cleanup set to true, otherwise Travis CI will delete all the files created during the build, which will probably delete what you are trying to upload.</p>
<p>Further configuration #</p>
<p>local_dir: Directory to push to GitHub Pages, defaults to current directory. Can be specified as an absolute path or a relative path from the current directory.</p>
<p>repo: Repo slug, defaults to current repo. Note: The slug consists of username and repo name and is formatted like user/repo-name.</p>
<p>target_branch: Branch to (force, see: keep_history) push local_dir contents to, defaults to gh-pages.</p>
<p>keep_history: Optional, create incremental commit instead of doing push force, defaults to false. fqdn: Optional, sets a custom domain for your website, defaults to no custom domain support.</p>
<p>project_name: Defaults to value of fqdn or repo slug, used for metadata. email: Optional, committer info, defaults to <a href="mailto:deploy@travis-ci.org">deploy@travis-ci.org</a>. name: Optional, committer, defaults to Deployment Bot.</p>
<p>committer_from_gh: Optional, defaults to false. Allows you to use the token’s owner name and email for commit. Overrides email and name options.</p>
<p>allow_empty_commit: Optional, defaults to false. Enabled if only keep_history is true.</p>
<p>github_url: Optional, the URL of the self-hosted GitHub enterprise, defaults to github.com.</p>
<p>verbose: Optional, be verbose about internal steps, defaults to false.</p>
<p>deployment_file: Optional, defaults to false, enables creation of deployment-info files.</p>
<h3 id="official-notification-spec">official notification spec</h3>
<p>Configuring email notifications Specify when you want to get notified:</p>
<pre><code>notifications:
  email:
    recipients:
      - one@example.com
      - other@example.com
    on_success: never # default: change
    on_failure: always # default: always</code></pre>
<h2 id="travis-ci-问题集锦">travis CI 问题集锦</h2>
<h3 id="kdoc">KDOC:</h3>
<h4 id="travis-ci环境变量-设置env--单行-vs-多行">travis CI环境变量 设置,env: -单行 VS 多行</h4>
<p>不能这样分开写：会报错，变量找不到，要写到同一行</p>
<pre><code>env:
  - T_DIR_BASE_SRC=$TRAVIS_BUILD_DIR/003work/002memo
  - T_DIR_BASE_OBJ=$TRAVIS_BUILD_DIR/output/002memo
  - T_DIR_BASE_COPYTO=$TRAVIS_BUILD_DIR/output/copy2 
  - T_DIR_TEMPLATE=$TRAVIS_BUILD_DIR/003work/000tools/002makefiles/   001pandoc/templates</code></pre>
<p>参考：</p>
<p><a href="https://docs.travis-ci.com/user/environment-variables#defining-public-variables-in-travisyml">travis CI spec: 环境变量environment-variables</a></p>
<pre><code>env:
  - FOO=foo BAR=bar</code></pre>
<p>一个build要写到同一行中, 不同行是不同的build中的变量</p>
<h4 id="linux上文件名大小写敏感包括后缀名makefile-vs-makefile">linux上文件名大小写敏感，包括后缀名。Makefile VS makefile</h4>
<pre><code>make startconv -f $TRAVIS_BUILD_DIR/003work/000tools/002makefiles/001pandoc/linux/makefile</code></pre>
<p>报错找不文件或目录，没有编译rule</p>
<p>原因：makefile 和 Makefile 是两个不一样的文件</p>
<p>.c 和 .C 也是不一样的，要用脚本更改过来。</p>
<h4 id="cp目标目录不存在先mkdir--p">cp目标目录不存在，先mkdir -p</h4>
<pre><code>ifdef DIR_BASE_COPYTO
    @echo copy $(SUFFIX_TO) file to {hexo post}$(DIR_BASE_COPYTO) ...
#   cp $$@ $(dir $(subst $(DIR_BASE_OBJ),$(DIR_BASE_COPYTO),$(1))) 
#因copy目标目录如果不存在，不能直接用cp命令，会出错，所以分两步，先mkdir, 再CP
    mkdir -p $(dir $(subst $(DIR_BASE_OBJ),$(DIR_BASE_COPYTO),$(1))) 
    cp $$@ $(dir $(subst $(DIR_BASE_OBJ),$(DIR_BASE_COPYTO),$(1)))
endif</code></pre>
<h4 id="gnumake-file写文件命令输出gbk码file-需iconv转换">gnumake-file写文件命令输出GBK码，$(file, 需iconv转换</h4>
<pre><code>$(file &gt;$$@.tmp</code></pre>
<h4 id="iconv转换文件gbkutf8报错文件中有不支持的字符">iconv转换文件(GBK=&gt;UTF8)报错，文件中有不支持的字符</h4>
<p>从文件系统中取到的中文目录名和makefile中的中文，变成了几个乱码导致iconv认为是不认识的GBK码，从而iconv报错</p>
<p>$(file 在输出中文文件和文件夹名字时，不知道成了什么编码，反正是乱码，自然不能在转换字库中找到了。</p>
<p>所以加入-c,表示忽略。即保持原样不转换。</p>
<p>:</p>
<pre><code>#   iconv -f GBK -t UTF-8 $$@.tmp &gt;$$@
# 加入-c，表示忽略那些不能解释的字符
    iconv -f GBK -t UTF-8 -c $$@.tmp &gt;$$@</code></pre>
<h4 id="真正原因iconv转换文件gbkutf8报错文件中有不支持的字符">真正原因：iconv转换文件(GBK=&gt;UTF8)报错，文件中有不支持的字符</h4>
<p>.travis.yml 是以 UTF-16 littel endian (0xFFFE)存储的。 所以make带入的参数 ADD_HEXO_TAG_FROM_DIR=技术 也是UTF16LE的。</p>
<p><span class="title-ref">/linux/Makefile</span> 是以no BOM的自然方式存储的，后来发觉不是UTF8的模式，是以中文windows的codePage存储的，所以是GBK码形式的。</p>
<p>这样前面问题就可以解释了, <span class="title-ref">$(file &gt;$$@.tmp</span> 写入文件时， makefile中自然写入的中文"笔记"，被写成GBK码，.travis.yml带入的参数“技术”，却写入的是UTF16LE，同一文件中有不同的编码，这样如果用iconv转换自然会报错，UTF16LE编码的中文在GBK库中是没有的。同时如果用iconv强行当GBK转换就会乱了不知道是什么结果,如果保持原值用UTF8来解释自然就是乱码了。</p>
<p>所以不管是用iconv转换，还是不转都有一种是有问题的，一个好，一个不好。</p>
<p>解决方法：</p>
<p>都用同一种格式存储，再决定转还是不转。建议utf8</p>
<p>把 <span class="title-ref">/linux/Makefile</span> 存储成UTF8的。 这样发觉iconv也可以不用了，大概 <span class="title-ref">$(file &gt;$$@.tmp</span> 写入文件时，系统自然就把文件格式设成了UTF,然后用 <span class="title-ref">pandoc $$&lt; -o - &gt;&gt;$$@</span> append模式添加输入UTF时，就成了utf了。 有一点没搞清楚，到底最后成了UTF8还是UTF16LE，猜想大概是utf8.</p>
<p>字符编码小知识： 参见 字符文件编码.rst 字符编码小知识</p>
<hr />
