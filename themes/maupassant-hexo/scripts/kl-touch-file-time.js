/* global hexo */

'use strict';
/*
�����¿�ʼ��Ⱦǰִ�С������Բο� ������Ⱦ ���˽�ִ��˳��
������˵���ѱ���תΪСд��
`hexo������before_post_render-theme\scripts\filters\kl-touch-file-time.js <https://hexo.io/zh-cn/api/filter>`__
*/

/*
# Ϊ�˽��git�ļ�cloneʱ�����⡣��ָ���commitʱ�䡣
# ����git log ȡ�ص��Ǳ���git�����commitʱ�䣬����Ҫ��repo��������ʷ����������
# ��tavis CI�ϣ�ֻҪ����
# git:
#  depth: false
# ��һ�������clone,����֪����ôʵ�֣�����pull���з�֧�Ϳ����˰ɣ�����
# ������һ���غϣ�ѵ����linux���tail,touch,date,sed,xargs,bash,while do,�������Ҳ��ǿ���䣬makefile��eval2��չ������������������

*/
hexo.extend.filter.register('before_post_render', function(data){
  data.date = data.updated;
  return data;
});