---
title: t
date: 2019-09-04 17:31:37
tags: 
- sports
- essay

categories:
- 散文
- 心情
---

测试画图插件

## test for flowchart.js

```flow
st=>start: Start|past:>http://www.google.com[blank]
e=>end: End:>http://www.google.com
op1=>operation: My Operation|past
op2=>operation: Stuff|current
sub1=>subroutine: My Subroutine|invalid
cond=>condition: Yes
or No?|approved:>http://www.google.com
c2=>condition: Good idea|rejected
io=>inputoutput: catch something...|request

st->op1(right)->cond
cond(yes, right)->c2
cond(no)->sub1(left)->op1
c2(yes)->io->e
c2(no)->op2->e
```

## hi


代码测试：

``javascript
    if (typeof Velocity === 'function') {
      Velocity(siteNav, animateAction, {
        duration: 200,
        complete: function() {
          siteNav.classList.toggle(ON_CLASS_NAME);
        }
      });
    } else {
      siteNav.classList.toggle(ON_CLASS_NAME);
    }
    
``



	if (typeof Velocity === 'function') {
	  Velocity(siteNav, animateAction, {
	    duration: 200,
	    complete: function() {
	      siteNav.classList.toggle(ON_CLASS_NAME);
	    }
	  });
	} else {
	  siteNav.classList.toggle(ON_CLASS_NAME);
	}
