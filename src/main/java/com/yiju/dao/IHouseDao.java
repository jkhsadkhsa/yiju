package com.yiju.dao;

import com.yiju.bean.House;
import com.yiju.pojo.HouseInfo;
import com.yiju.pojo.HouseView;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/*房屋*/
public interface IHouseDao {
    /*根据房屋类型查询所有房屋*/
    /*@Paeam("***") 这里写的什么，mapper映射文件里就写什么
    * 当sql语句条件为多个时，需要添加注释，不然会导入错误
    * */
    List<HouseView> findFourHouseByType(@Param(value = "hType")Integer houseType);
    /*根据Type查询所有房屋信息*/
    List<HouseView> findAllHouseByType(@Param(value = "hType")Integer houseType);
    /*查询房屋详情信息ByhouseId*/
    HouseView findHouseById(@Param(value = "houseId") Integer houseId);
    /*查询房屋ByHouseTitle*/
    List<HouseView> searchByHouseTitle(String houseTitle);

    int toPostHouse(House house);

    int saveHousePost2(HouseInfo houseInfo);
}
