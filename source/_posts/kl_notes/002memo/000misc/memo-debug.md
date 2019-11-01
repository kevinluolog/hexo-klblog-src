---
title: memo-debug
tag: 
- 自动生成
- 笔记
categories:
- 000misc
toc: TRUE
---
<h1 id="memo-of-debug">memo of debug</h1>
<div class="contents">
<p>目录</p>
</div>
<div class="section-numbering">

</div>
<h2 id="makefile">makefile</h2>
<h3 id="else-应该小写">ELSE 应该小写。</h3>
<p>现象：</p>
<p>编译seprator错误。同时指向行号为后面的foreach处</p>
<p>解决：</p>
<p>ELSE 应该小写。</p>
<pre><code>ifeq ($(ADD_HEXO_HEAD),TRUE)
  @echo start hexo head output...
  $$(file &gt;$$@.tmp,$$(call def_hexo_md_head,$(subst $(SUFFIX_TO),,$(notdir $(1)))))
# @echo $$(TBFILENAME)+2
# @echo $(subst $(SUFFIX_TO),,$(notdir $(1)))+1#直接函数填入才能取到。
  @echo convert to utf8
  iconv -f GBK -t UTF-8 $$@.tmp &gt;$$@
  @echo start pandoc $(SUFFIX_FROM)2$(SUFFIX_TO)...
  pandoc $$&lt; -o - &gt;&gt;$$@
  @echo delete .tmp file...
  del $$@.tmp
ELSE
  @echo start pandoc $(SUFFIX_FROM)2$(SUFFIX_TO)...
  pandoc $$&lt; -o $$@
endif
$(foreach temp,$(OBJ_PATH_MDS),$(eval $(call PROGRAM_template,$(temp))))</code></pre>
