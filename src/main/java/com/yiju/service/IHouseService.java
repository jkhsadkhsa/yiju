package com.yiju.service;

import com.yiju.pojo.HouseView;

import java.util.List;

/*房屋*/
public interface IHouseService {
    /*根据房屋类型查询所有房屋*/
    List<HouseView> findFourHouseByType(Integer houseType);
    /*根据房屋类型查询所有房屋 分页*/
    List<HouseView> findAllHouseByType(Integer page, Integer houseType);
    /*根据房屋id查询详情信息*/
    HouseView findHouseById(Integer houseId);
    /*查询房屋ByHouseTitle*/
    List<HouseView> searchByHouseTitle(Integer page,String houseTitle);
}
