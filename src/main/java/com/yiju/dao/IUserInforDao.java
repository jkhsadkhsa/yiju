package com.yiju.dao;

import com.yiju.bean.Collect;
import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfor;
import com.yiju.pojo.CollectView;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserInforDao {

    // 根据手机号查找===登录
    UserInfor findUserByPhone(String phone);
    //添加用户
    int addUserInfor(@Param("phone") String phone, @Param("password") String password);
    //保存信息修改
    int saveEdit(UserInfor userInfor);
    //根据id查询UserAuth
    UserAuth findUserAuthById(Integer userId);
    //根据id修改UserInfor
    int updUserById(UserInfor userInfor);

    List<CollectView> getCollectViewById(Integer userId);

    Collect findCollectById(@Param("userId") Integer userId, @Param("houseId") Integer houseId);

    int addCollect(Collect collect);

    int delCollect(Integer collectId);
}
