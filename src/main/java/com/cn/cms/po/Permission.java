package com.cn.cms.po;

import com.cn.cms.enums.PlatformEnum;
import lombok.Getter;
import lombok.Setter;

/**
 * Created by Administrator on 2017/11/6 0006.
 */
@Setter
@Getter
public class Permission extends Base {

    /**
     * 名称
     */
    private String name;

    /**
     * 说明
     */
    private String description;

    /**
     * 类型
     */
    private Integer type;

    /**
     * 地址
     */
    private String url;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 父ID
     */
    private Long parentId;

    /**
     * 权限Code
     */
    private String permission;

    /**
     * 平台字段
     */
    private Integer platform = PlatformEnum.CMS.getType();

    /**
     * 平台名称
     */
    private String platformStr;

    public String getPlatformStr(){
        return PlatformEnum.get(platform).getName();
    }
}