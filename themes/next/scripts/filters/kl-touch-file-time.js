/* global hexo */

'use strict';
/*
在文章开始渲染前执行。您可以参考 文章渲染 以了解执行顺序。
举例来说，把标题转为小写：
`hexo过滤器before_post_render-theme\scripts\filters\kl-touch-file-time.js <https://hexo.io/zh-cn/api/filter>`__
*/

/*
# 为了解决git文件clone时间问题。想恢复到commit时间。
# 由于git log 取回的是本机git保存的commit时间，所以要把repo的所有历史数据拉下来
# 在tavis CI上，只要设置
# git:
#  depth: false
# 在一般机器上clone,还不知道怎么实现，可能pull所有分支就可以了吧？？？
# 经过这一个回合，训练了linux命令，tail,touch,date,sed,xargs,bash,while do,正则规则也加强记忆，makefile的eval2次展开机制理解更加清晰。

*/
hexo.extend.filter.register('before_post_render', function(data){
  data.date = data.updated;
  return data;
});