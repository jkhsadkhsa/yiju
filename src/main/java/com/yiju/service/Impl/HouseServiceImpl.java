package com.yiju.service.Impl;

import com.github.pagehelper.PageHelper;
import com.yiju.bean.House;
import com.yiju.dao.IHouseDao;
import com.yiju.pojo.HouseInfo;
import com.yiju.pojo.HouseView;
import com.yiju.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HouseServiceImpl implements IHouseService {
    @Autowired
    private IHouseDao houseDao;
    @Override
    /*根据房屋type 查询*/
    public List<HouseView> findFourHouseByType(Integer houseType) {
        System.out.println("service"+houseType);
        System.out.println();
        return this.houseDao.findFourHouseByType(houseType);
    }

    @Override
    /*根据房屋Type查询所有信息*/
    public List<HouseView> findAllHouseByType(Integer page, Integer houseType) {
        PageHelper.startPage(page,5);
        return houseDao.findAllHouseByType(houseType);
    }

    @Override
    /*查询房屋详情信息ByhouseId*/
    public HouseView findHouseById(Integer houseId) {
        return this.houseDao.findHouseById(houseId);
    }

    @Override
    /*查询房屋ByhouseTitle*/
    public List<HouseView> searchByHouseTitle(Integer page,String houseTitle) {
        PageHelper.startPage(page,5);
        return houseDao.searchByHouseTitle(houseTitle);
    }

    @Override
    public int toHousePost(House house) {
        return houseDao.toPostHouse(house);
    }

    @Override
    public int saveHousePost2(HouseInfo houseInfo) {
        return houseDao.saveHousePost2(houseInfo);
    }
}
