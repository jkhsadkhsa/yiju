package com.yiju.service.Impl;

import com.yiju.bean.UserAuth;
import com.yiju.dao.IVerifyDao;
import com.yiju.service.IVerifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/*实名认证*/
@Service
public class VerifyServiceImpl implements IVerifyService {
    @Autowired
    private IVerifyDao verifyDao;
    @Override
    /*添加实名认证*/
    public int addVerifyInfor(UserAuth userAuth) {
        return verifyDao.addVerifyInfor(userAuth);
    }

    @Override
    public int delUserAuthByUserId(Integer userId) {
        return verifyDao.delUserAuthByUserId(userId);
    }
}
