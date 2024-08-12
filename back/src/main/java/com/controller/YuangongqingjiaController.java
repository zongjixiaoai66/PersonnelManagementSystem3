
package com.controller;

import java.io.File;
import java.math.BigDecimal;
import java.net.URL;
import java.text.SimpleDateFormat;
import com.alibaba.fastjson.JSONObject;
import java.util.*;
import org.springframework.beans.BeanUtils;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;
import com.service.TokenService;
import com.utils.*;
import java.lang.reflect.InvocationTargetException;

import com.service.DictionaryService;
import org.apache.commons.lang3.StringUtils;
import com.annotation.IgnoreAuth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.*;
import com.entity.view.*;
import com.service.*;
import com.utils.PageUtils;
import com.utils.R;
import com.alibaba.fastjson.*;

/**
 * 员工请假
 * 后端接口
 * @author
 * @email
*/
@RestController
@Controller
@RequestMapping("/yuangongqingjia")
public class YuangongqingjiaController {
    private static final Logger logger = LoggerFactory.getLogger(YuangongqingjiaController.class);

    private static final String TABLE_NAME = "yuangongqingjia";

    @Autowired
    private YuangongqingjiaService yuangongqingjiaService;


    @Autowired
    private TokenService tokenService;

    @Autowired
    private DictionaryService dictionaryService;//字典
    @Autowired
    private GonggaoService gonggaoService;//公告
    @Autowired
    private JixiaoService jixiaoService;//绩效
    @Autowired
    private PeixunService peixunService;//培训
    @Autowired
    private RenshidiaodongService renshidiaodongService;//人事调动
    @Autowired
    private XinziService xinziService;//薪资
    @Autowired
    private YuangongService yuangongService;//员工
    @Autowired
    private YuangongKaoqinService yuangongKaoqinService;//员工考勤
    @Autowired
    private YuangongKaoqinListService yuangongKaoqinListService;//员工考勤详情
    @Autowired
    private ZhaopinService zhaopinService;//招聘
    @Autowired
    private UsersService usersService;//管理员


    /**
    * 后端列表
    */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("page方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));
        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永不会进入");
        else if("员工".equals(role))
            params.put("yuangongId",request.getSession().getAttribute("userId"));
        CommonUtil.checkMap(params);
        PageUtils page = yuangongqingjiaService.queryPage(params);

        //字典表数据转换
        List<YuangongqingjiaView> list =(List<YuangongqingjiaView>)page.getList();
        for(YuangongqingjiaView c:list){
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(c, request);
        }
        return R.ok().put("data", page);
    }

    /**
    * 后端详情
    */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("info方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        YuangongqingjiaEntity yuangongqingjia = yuangongqingjiaService.selectById(id);
        if(yuangongqingjia !=null){
            //entity转view
            YuangongqingjiaView view = new YuangongqingjiaView();
            BeanUtils.copyProperties( yuangongqingjia , view );//把实体数据重构到view中
            //级联表 员工
            //级联表
            YuangongEntity yuangong = yuangongService.selectById(yuangongqingjia.getYuangongId());
            if(yuangong != null){
            BeanUtils.copyProperties( yuangong , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "yuangongId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setYuangongId(yuangong.getId());
            }
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(view, request);
            return R.ok().put("data", view);
        }else {
            return R.error(511,"查不到数据");
        }

    }

    /**
    * 后端保存
    */
    @RequestMapping("/save")
    public R save(@RequestBody YuangongqingjiaEntity yuangongqingjia, HttpServletRequest request){
        logger.debug("save方法:,,Controller:{},,yuangongqingjia:{}",this.getClass().getName(),yuangongqingjia.toString());

        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永远不会进入");
        else if("员工".equals(role))
            yuangongqingjia.setYuangongId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

        Wrapper<YuangongqingjiaEntity> queryWrapper = new EntityWrapper<YuangongqingjiaEntity>()
            .eq("yuangong_id", yuangongqingjia.getYuangongId())
            .eq("yuangongqingjia_name", yuangongqingjia.getYuangongqingjiaName())
            .eq("yuangongqingjia_types", yuangongqingjia.getYuangongqingjiaTypes())
            .eq("yuangongqingjia_number", yuangongqingjia.getYuangongqingjiaNumber())
            .in("yuangongqingjia_yesno_types", new Integer[]{1,2})
            ;

        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        YuangongqingjiaEntity yuangongqingjiaEntity = yuangongqingjiaService.selectOne(queryWrapper);
        if(yuangongqingjiaEntity==null){
            yuangongqingjia.setInsertTime(new Date());
            yuangongqingjia.setYuangongqingjiaYesnoTypes(1);
            yuangongqingjia.setCreateTime(new Date());
            yuangongqingjiaService.insert(yuangongqingjia);
            return R.ok();
        }else {
            if(yuangongqingjiaEntity.getYuangongqingjiaYesnoTypes()==1)
                return R.error(511,"有相同的待审核的数据");
            else if(yuangongqingjiaEntity.getYuangongqingjiaYesnoTypes()==2)
                return R.error(511,"有相同的审核通过的数据");
            else
                return R.error(511,"表中有相同数据");
        }
    }

    /**
    * 后端修改
    */
    @RequestMapping("/update")
    public R update(@RequestBody YuangongqingjiaEntity yuangongqingjia, HttpServletRequest request) throws NoSuchFieldException, ClassNotFoundException, IllegalAccessException, InstantiationException {
        logger.debug("update方法:,,Controller:{},,yuangongqingjia:{}",this.getClass().getName(),yuangongqingjia.toString());
        YuangongqingjiaEntity oldYuangongqingjiaEntity = yuangongqingjiaService.selectById(yuangongqingjia.getId());//查询原先数据

        String role = String.valueOf(request.getSession().getAttribute("role"));
//        if(false)
//            return R.error(511,"永远不会进入");
//        else if("员工".equals(role))
//            yuangongqingjia.setYuangongId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

            yuangongqingjiaService.updateById(yuangongqingjia);//根据id更新
            return R.ok();
    }


    /**
    * 审核
    */
    @RequestMapping("/shenhe")
    public R shenhe(@RequestBody YuangongqingjiaEntity yuangongqingjiaEntity, HttpServletRequest request){
        logger.debug("shenhe方法:,,Controller:{},,yuangongqingjiaEntity:{}",this.getClass().getName(),yuangongqingjiaEntity.toString());

        YuangongqingjiaEntity oldYuangongqingjia = yuangongqingjiaService.selectById(yuangongqingjiaEntity.getId());//查询原先数据

//        if(yuangongqingjiaEntity.getYuangongqingjiaYesnoTypes() == 2){//通过
//            yuangongqingjiaEntity.setYuangongqingjiaTypes();
//        }else if(yuangongqingjiaEntity.getYuangongqingjiaYesnoTypes() == 3){//拒绝
//            yuangongqingjiaEntity.setYuangongqingjiaTypes();
//        }
        yuangongqingjiaEntity.setYuangongqingjiaShenheTime(new Date());//审核时间
        yuangongqingjiaService.updateById(yuangongqingjiaEntity);//审核

        return R.ok();
    }

    /**
    * 删除
    */
    @RequestMapping("/delete")
    public R delete(@RequestBody Integer[] ids, HttpServletRequest request){
        logger.debug("delete:,,Controller:{},,ids:{}",this.getClass().getName(),ids.toString());
        List<YuangongqingjiaEntity> oldYuangongqingjiaList =yuangongqingjiaService.selectBatchIds(Arrays.asList(ids));//要删除的数据
        yuangongqingjiaService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }


    /**
     * 批量上传
     */
    @RequestMapping("/batchInsert")
    public R save( String fileName, HttpServletRequest request){
        logger.debug("batchInsert方法:,,Controller:{},,fileName:{}",this.getClass().getName(),fileName);
        Integer yuangongId = Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId")));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //.eq("time", new SimpleDateFormat("yyyy-MM-dd").format(new Date()))
        try {
            List<YuangongqingjiaEntity> yuangongqingjiaList = new ArrayList<>();//上传的东西
            Map<String, List<String>> seachFields= new HashMap<>();//要查询的字段
            Date date = new Date();
            int lastIndexOf = fileName.lastIndexOf(".");
            if(lastIndexOf == -1){
                return R.error(511,"该文件没有后缀");
            }else{
                String suffix = fileName.substring(lastIndexOf);
                if(!".xls".equals(suffix)){
                    return R.error(511,"只支持后缀为xls的excel文件");
                }else{
                    URL resource = this.getClass().getClassLoader().getResource("static/upload/" + fileName);//获取文件路径
                    File file = new File(resource.getFile());
                    if(!file.exists()){
                        return R.error(511,"找不到上传文件，请联系管理员");
                    }else{
                        List<List<String>> dataList = PoiUtil.poiImport(file.getPath());//读取xls文件
                        dataList.remove(0);//删除第一行，因为第一行是提示
                        for(List<String> data:dataList){
                            //循环
                            YuangongqingjiaEntity yuangongqingjiaEntity = new YuangongqingjiaEntity();
//                            yuangongqingjiaEntity.setYuangongId(Integer.valueOf(data.get(0)));   //员工 要改的
//                            yuangongqingjiaEntity.setYuangongqingjiaName(data.get(0));                    //请假标题 要改的
//                            yuangongqingjiaEntity.setYuangongqingjiaText(data.get(0));                    //请假缘由 要改的
//                            yuangongqingjiaEntity.setYuangongqingjiaTypes(Integer.valueOf(data.get(0)));   //请假类型 要改的
//                            yuangongqingjiaEntity.setInsertTime(date);//时间
//                            yuangongqingjiaEntity.setYuangongqingjiaTime(sdf.parse(data.get(0)));          //请假时间 要改的
//                            yuangongqingjiaEntity.setYuangongqingjiaNumber(Integer.valueOf(data.get(0)));   //请假天数 要改的
//                            yuangongqingjiaEntity.setYuangongqingjiaYesnoTypes(Integer.valueOf(data.get(0)));   //申请状态 要改的
//                            yuangongqingjiaEntity.setYuangongqingjiaYesnoText(data.get(0));                    //处理意见 要改的
//                            yuangongqingjiaEntity.setYuangongqingjiaShenheTime(sdf.parse(data.get(0)));          //审核时间 要改的
//                            yuangongqingjiaEntity.setCreateTime(date);//时间
                            yuangongqingjiaList.add(yuangongqingjiaEntity);


                            //把要查询是否重复的字段放入map中
                        }

                        //查询是否重复
                        yuangongqingjiaService.insertBatch(yuangongqingjiaList);
                        return R.ok();
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            return R.error(511,"批量插入数据异常，请联系管理员");
        }
    }




}

