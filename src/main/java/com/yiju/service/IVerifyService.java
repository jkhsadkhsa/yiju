package com.yiju.service;

import com.yiju.bean.UserAuth;

/*实名认证*/
public interface IVerifyService {
    /*添加实名认证*/
    int addVerifyInfor(UserAuth userAuth);
    /*删除实名认证*/
    int delUserAuthByUserId(Integer userId);
}
