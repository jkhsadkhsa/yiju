package com.yiju.service.Impl;

import com.yiju.bean.Collect;
import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfor;
import com.yiju.dao.IUserInforDao;
import com.yiju.pojo.CollectView;
import com.yiju.service.IUserInforService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInforServiceImpl implements IUserInforService {
    @Autowired
    private IUserInforDao userInforDao;
    @Override
    /*根据手机号查询===登录*/
    public UserInfor findUserByPhone(String phone) {
        return userInforDao.findUserByPhone(phone);
    }

    @Override
//    注册
    public int addUserInfor(String phone, String password) {
        return userInforDao.addUserInfor(phone,password);
    }

    @Override
    /*信息保存修改*/
    public int saveEdit(UserInfor userInfor) {
        return this.userInforDao.saveEdit(userInfor);
    }

    @Override
    /*根据id查询UserAuth*/
    public UserAuth findUserAuthById(Integer userId) {
        return this.userInforDao.findUserAuthById(userId);
    }

    @Override
    /*根据id修改UserInfor*/
    public int updUserByUserId(UserInfor userInfor) {
        return this.userInforDao.updUserById(userInfor);
    }

    @Override
    public List<CollectView> getCollectViewById(Integer userId) {
        return this.userInforDao.getCollectViewById(userId) ;
    }

    @Override
    public Collect findCollectById(Integer userId, Integer houseId) {
        return userInforDao.findCollectById(userId,houseId);
    }

    @Override
    public int addCollect(Collect collect) {
        return userInforDao.addCollect(collect);
    }

    @Override
    public int delCollect(Integer collectId) {
        return userInforDao.delCollect(collectId);
    }
}
