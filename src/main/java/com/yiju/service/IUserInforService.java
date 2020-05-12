package com.yiju.service;

import com.yiju.bean.Collect;
import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfor;
import com.yiju.pojo.CollectView;

import java.util.List;

/*用户模块*/
public interface IUserInforService {
    //根据手机号查询===登录
    UserInfor findUserByPhone(String phone);
    //添加用户
    int addUserInfor(String phone, String password);
    //修改信息保存
    int saveEdit(UserInfor userInfor);
    //根据id查询UserAuth
    UserAuth findUserAuthById(Integer userId);
    //根据id修改UserInfor
    int updUserByUserId(UserInfor userInfor);
    //
    List<CollectView> getCollectViewById(Integer userId);

    Collect findCollectById(Integer userId, Integer houseId);

    int addCollect(Collect collect);

    int delCollect(Integer collectId);
}
