---
title: python
tag: 
- 自动生成
- 笔记
categories:
- 001install
toc: TRUE
---
<h1 id="python">python</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="install">install</h2>
<h3 id="主要相关工具和包为">主要相关工具和包为：</h3>
<ul>
<li>setuptools</li>
<li>pip</li>
<li>virtualenv</li>
</ul>
<h3 id="目标是用pip安装包好处多如自动下载安装依赖包">目标是用PIP安装包。好处多，如自动下载安装依赖包</h3>
<h3 id="怎么装上pip">怎么装上pip</h3>
<h4 id="路径1get-pip.py法-把pipeasy_install一起装了">路径1:get-pip.py法 把pip/easy_install一起装了</h4>
<div class="line-block"><a href="https://bootstrap.pypa.io/get-pip.py">download get-pip.py</a><br />
curl <a href="https://bootstrap.pypa.io/get-pip.py">https://bootstrap.pypa.io/get-pip.py</a> -o get-pip.py<br />
python get-pip.py</div>
<div class="line-block"><a href="https://bootstrap.pypa.io/get-pip.py">Download get-pip.py</a><br />
python get-pip.py #install or upgrade pip. Additionally, it will install setuptools and wheel<br />
python get-pip.py –prefix=/usr/local/ #装到指定的目录<br />
python -m pip install –upgrade pip setuptools wheel #up to date copies of the setuptools and wheel projects are useful</div>
<div class="line-block">pip can automatically install dependency<br />
pip can install from either Source Distributions (sdist) or Wheels,<br />
pip will prefer a compatible wheel.<br />
Wheels are a pre-built distribution format that provides faster installation compared to Source Distributions (sdist), especially when a project contains compiled extensions.</div>
<h4 id="路径2-源包setup.py-python-setup.py-install">路径2: 源包setup.py python setup.py install</h4>
<div class="line-block">用源包先装setuptools,再装pip<br />
<a href="https://packaging.python.org/tutorials/installing-packages/">tutorial-help-install package</a><br />
<a href="https://pypi.org/project/setuptools/#files">setuptools包下载</a><br />
<a href="https://pypi.org/project/pip/#files">PIP包下载</a><br />
解压进入目录执行,<br />
python setup.py install</div>
<h4 id="路径3easy_install-法">路径3:easy_install 法</h4>
<div class="line-block"><a href="https://pypi.python.org/pypi/ez_setup">easy_install下载地址</a><br />
python ez_setup.py<br />
会在python的安装目录中生成scripts目录，其中有easy_install.exe</div>
<div class="line-block">然后用<br />
easy_install pip</div>
<p>easy_install是由PEAK(Python Enterprise Application Kit)开发的setuptools包里带的一个命令，所以使用easy_install实际上是在调用setuptools来完成安装模块的工作。</p>
<h4 id="pip文档链接">pip文档链接</h4>
<div class="line-block"><a href="https://pip.pypa.io/">pip docs</a><br />
<a href="https://pip.pypa.io/en/latest/reference/index.html">pip Reference Guide</a><br />
<a href="https://packaging.python.org/tutorials/managing-dependencies/#managing-dependencies">dependency management tutorial</a></div>
<h4 id="pip命令用法">pip命令用法</h4>
<div class="line-block">如果 Python2 和 Python3 同时有 pip，则使用方法如下：<br />
python3 -m pip install XXX</div>
<div class="line-block">pip –version<br />
pip –help<br />
pip install -U pip # 升级 pip<br />
python -m pip install -U pip<br />
pip install SomePackage # 最新版本 pip install SomePackage==1.0.4 # 指定版本<br />
pip install ‘SomePackage&gt;=1.0.4’ # 最小版本<br />
pip uninstall SomePackage</div>
<div class="line-block">pip freeze &gt; requirements.txt #当前系统包系统<br />
pip install -r requirements.txt</div>
<h3 id="virtualenv">virtualenv</h3>
<p><a href="https://pypi.org/project/virtualenv/#files">virtualenv</a></p>
<pre><code>virtualenv &lt;pathName&gt; #在pathname处建立环境，可以 -p 指定母python路径  
\path\to\env\Scripts\activate.bat  
deactivate.bat  </code></pre>
<div class="line-block"><a href="http://virtualenv.pypa.io/">virtualenv docs</a><br />
<a href="https://docs.python.org/3/library/venv.html">venv docs</a><br />
<a href="https://packaging.python.org/key_projects/#pipenv">Pipenv</a></div>
<h2 id="web资源">web资源</h2>
<div class="line-block">python - pypi pypa<br />
Perl - CPAN<br />
Ruby - Gems</div>
<div class="line-block">latex - CTAN<br />
sublime - packagecontol.io</div>
<h3 id="website">website</h3>
<ul>
<li><p>main page:</p>
<p><a href="https://www.python.org">https://www.python.org</a></p></li>
<li><p>package get:</p></li>
</ul>
<div class="line-block">PYPI/PYPA python package<br />
<a href="https://www.pypa.io/">https://www.pypa.io/</a><br />
<a href="https://pypi.org/">https://pypi.org/</a><br />
- tutorial:教程 <a href="https://readthedocs.org/projects/python/">https://readthedocs.org/projects/python/</a><br />
tutorial<br />
<a href="https://packaging.python.org/tutorials/">https://packaging.python.org/tutorials/</a><br />
<a href="https://packaging.python.org/tutorials/installing-packages/#">https://packaging.python.org/tutorials/installing-packages/#</a></div>
<h2 id="package">package</h2>
