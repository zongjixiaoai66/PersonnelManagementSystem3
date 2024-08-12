import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
    // 解决多次点击左侧菜单报错问题
    const VueRouterPush = VueRouter.prototype.push
    VueRouter.prototype.push = function push (to) {
    return VueRouterPush.call(this, to).catch(err => err)
    }
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import beifen from '@/views/modules/databaseBackup/beifen'
import huanyuan from '@/views/modules/databaseBackup/huanyuan'

     import users from '@/views/modules/users/list'
    import dictionary from '@/views/modules/dictionary/list'
    import gonggao from '@/views/modules/gonggao/list'
    import jixiao from '@/views/modules/jixiao/list'
    import peixun from '@/views/modules/peixun/list'
    import renshidiaodong from '@/views/modules/renshidiaodong/list'
    import singleSeach from '@/views/modules/singleSeach/list'
    import xinzi from '@/views/modules/xinzi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yuangong from '@/views/modules/yuangong/list'
    import yuangongKaoqin from '@/views/modules/yuangongKaoqin/list'
    import yuangongKaoqinList from '@/views/modules/yuangongKaoqinList/list'
    import yuangongqingjia from '@/views/modules/yuangongqingjia/list'
    import zhaopin from '@/views/modules/zhaopin/list'
    import config from '@/views/modules/config/list'
    import dictionaryBumen from '@/views/modules/dictionaryBumen/list'
    import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
    import dictionaryJinyong from '@/views/modules/dictionaryJinyong/list'
    import dictionaryJixiao from '@/views/modules/dictionaryJixiao/list'
    import dictionaryPeixun from '@/views/modules/dictionaryPeixun/list'
    import dictionaryRenshidiaodong from '@/views/modules/dictionaryRenshidiaodong/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionarySingleSeach from '@/views/modules/dictionarySingleSeach/list'
    import dictionaryXueli from '@/views/modules/dictionaryXueli/list'
    import dictionaryYuangongKaoqin from '@/views/modules/dictionaryYuangongKaoqin/list'
    import dictionaryYuangongKaoqinList from '@/views/modules/dictionaryYuangongKaoqinList/list'
    import dictionaryYuangongqingjia from '@/views/modules/dictionaryYuangongqingjia/list'
    import dictionaryYuangongqingjiaYesno from '@/views/modules/dictionaryYuangongqingjiaYesno/list'
    import dictionaryZhaopin from '@/views/modules/dictionaryZhaopin/list'
    import dictionaryZhiwei from '@/views/modules/dictionaryZhiwei/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }, {
        path: '/huanyuan',
        name: '数据还原',
        component: huanyuan
    }, {
        path: '/beifen',
        name: '数据备份',
        component: beifen
    }, {
        path: '/users',
        name: '管理信息',
        component: users
    }
    ,{
        path: '/dictionaryBumen',
        name: '部门',
        component: dictionaryBumen
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionaryJinyong',
        name: '账户状态',
        component: dictionaryJinyong
    }
    ,{
        path: '/dictionaryJixiao',
        name: '绩效类型',
        component: dictionaryJixiao
    }
    ,{
        path: '/dictionaryPeixun',
        name: '培训类型',
        component: dictionaryPeixun
    }
    ,{
        path: '/dictionaryRenshidiaodong',
        name: '人事调动类型',
        component: dictionaryRenshidiaodong
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionarySingleSeach',
        name: '单页数据类型',
        component: dictionarySingleSeach
    }
    ,{
        path: '/dictionaryXueli',
        name: '学历状态',
        component: dictionaryXueli
    }
    ,{
        path: '/dictionaryYuangongKaoqin',
        name: '员工考勤类型',
        component: dictionaryYuangongKaoqin
    }
    ,{
        path: '/dictionaryYuangongKaoqinList',
        name: '打卡状态',
        component: dictionaryYuangongKaoqinList
    }
    ,{
        path: '/dictionaryYuangongqingjia',
        name: '请假类型',
        component: dictionaryYuangongqingjia
    }
    ,{
        path: '/dictionaryYuangongqingjiaYesno',
        name: '申请状态',
        component: dictionaryYuangongqingjiaYesno
    }
    ,{
        path: '/dictionaryZhaopin',
        name: '招聘类型',
        component: dictionaryZhaopin
    }
    ,{
        path: '/dictionaryZhiwei',
        name: '职位',
        component: dictionaryZhiwei
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/gonggao',
        name: '公告',
        component: gonggao
      }
    ,{
        path: '/jixiao',
        name: '绩效',
        component: jixiao
      }
    ,{
        path: '/peixun',
        name: '培训',
        component: peixun
      }
    ,{
        path: '/renshidiaodong',
        name: '人事调动',
        component: renshidiaodong
      }
    ,{
        path: '/singleSeach',
        name: '单页数据',
        component: singleSeach
      }
    ,{
        path: '/xinzi',
        name: '薪资',
        component: xinzi
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }
    ,{
        path: '/yuangong',
        name: '员工',
        component: yuangong
      }
    ,{
        path: '/yuangongKaoqin',
        name: '员工考勤',
        component: yuangongKaoqin
      }
    ,{
        path: '/yuangongKaoqinList',
        name: '员工考勤详情',
        component: yuangongKaoqinList
      }
    ,{
        path: '/yuangongqingjia',
        name: '员工请假',
        component: yuangongqingjia
      }
    ,{
        path: '/zhaopin',
        name: '招聘',
        component: zhaopin
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
