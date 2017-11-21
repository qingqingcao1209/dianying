package com.cn.cms.service.impl;

import com.cn.cms.dao.PermissionDao;
import com.cn.cms.dao.UserDao;
import com.cn.cms.po.Permission;
import com.cn.cms.po.User;
import com.cn.cms.service.UserService;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/11/3 0003.
 */
@Repository
public class UserServiceImpl implements UserService {

    @Resource
    UserDao userDao;

    @Resource
    private PermissionDao permissionDao;

    public User findUserName(String userName){
        return userDao.findUserName(userName);
    }

    public List<Permission> findPermissionForPositionIds(String user,Integer platform){
        return permissionDao.findPermissionForPositionIds(user,platform);
    }
}
