package com.cn.cms.web.controller;

import com.cn.cms.biz.XiaoshuoBiz;
import com.cn.cms.bo.PermissionBean;
import com.cn.cms.contants.PermissionNames;
import com.cn.cms.po.XiaoshuoClassification;
import com.cn.cms.utils.Page;
import com.cn.cms.web.ann.CheckAuth;
import com.cn.cms.web.ann.CheckToken;
import com.cn.cms.web.result.ApiResponse;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/1/10 0010.
 * 小说控制层
 */
@Controller
@RequestMapping(value = "/webapi/xiaoshuo/",produces = "application/json;charset=UTF-8")
@ResponseBody
public class XiaoshuoController extends BaseController{

    @Resource
    private XiaoshuoBiz xiaoshuoBiz;

    /**
     * 新增分类
     * @param request
     * @return
     */
    @CheckToken
    @CheckAuth(name = PermissionNames.XIAOSHUO.ADD_CLASS.WRITE)
    @RequestMapping(value = "/addClassify",method = RequestMethod.POST)
    public String addClassify(HttpServletRequest request,
                              @RequestParam(value = "name") String name){
        xiaoshuoBiz.saveClassify(name);
        return ApiResponse.returnSuccess();
    }

    /**
     * 查看分类列表
     * @param request
     * @param page
     * @param pageSize
     * @return
     */
    @CheckToken
    @CheckAuth(name=PermissionNames.XIAOSHUO.CLASS_LIST.READ)
    @RequestMapping(value = "/classifyList",method = RequestMethod.GET)
    public String classifyList(HttpServletRequest request,
                               @RequestParam(value = "page",required = false) Integer page,
                               @RequestParam(value="pageSize",required = false)Integer pageSize){
        Page pageObj = new Page(page,pageSize);
        List<XiaoshuoClassification> xiaoshuoClassifications = xiaoshuoBiz.queryClassifyList(pageObj);
        Map<String, Object> result = new HashMap<>();
        result.put("page",pageObj);
        result.put("list",xiaoshuoClassifications);
        return ApiResponse.returnSuccess(result);
    }

    /**
     * 更新分类 只有列表有该功能,则权限为列表
     * @param request
     * @param id
     * @param classifyName
     * @return
     */
    @CheckToken
    @CheckAuth(name=PermissionNames.XIAOSHUO.CLASS_LIST.UPDATE)
    @RequestMapping(value = "/updateClassify",method = RequestMethod.POST)
    public String updateClassify(HttpServletRequest request,
                                 @RequestParam(value = "id") Integer id ,
                                 @RequestParam(value = "classifyName") String classifyName){
        String userID = getCurrentUserId(request);
        XiaoshuoClassification classify = new XiaoshuoClassification();
        classify.setLastModifyUserId(userID);
        classify.setClassifyName(classifyName);
        classify.setId(id);
        xiaoshuoBiz.updateClassify(classify);
        return ApiResponse.returnSuccess();
    }


}
