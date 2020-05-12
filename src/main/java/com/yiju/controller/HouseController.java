package com.yiju.controller;

import com.github.pagehelper.PageInfo;
import com.yiju.pojo.HouseView;
import com.yiju.service.IHouseService;
import com.yiju.service.Impl.HouseServiceImpl;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(HouseController.BASE_PATH)
public class HouseController {
    public static final String BASE_PATH = "houseController";
    @Autowired
    private IHouseService houseService = new HouseServiceImpl();

    @RequestMapping("/findFourHouseByType")
    /*查询4个房屋信息*/
    public ModelAndView findFourHouseByType(){
        System.out.println("=====");
        List<HouseView> newHouse = this.houseService.findFourHouseByType(0);
        System.out.println(newHouse);
        for (HouseView houseView :newHouse){
            System.out.println(houseView);
        }
        List<HouseView> oldHouse = this.houseService.findFourHouseByType(1);
        List<HouseView> rentHouse = this.houseService.findFourHouseByType(2);
        ModelAndView mv = new ModelAndView();
        mv.addObject("newHouse",newHouse);
        mv.addObject("oldHouse",oldHouse);
        mv.addObject("rentHouse",rentHouse);
        mv.setViewName("../main");
        return mv;
    }

    @RequestMapping("/findAllHouseByType")
    /*查询所有房屋信息*/
    public ModelAndView findAllHouseByType(@RequestParam(defaultValue = "1") Integer page, Integer houseType){
        /*调用service，查出想要的信息*/
        List<HouseView> allHouse=this.houseService.findAllHouseByType(page,houseType);
        /*推荐房源*/
        List<HouseView> TJ = this.houseService.findFourHouseByType(houseType);
        ModelAndView mv = new ModelAndView();
        PageInfo pageInfo = new PageInfo(allHouse);
        mv.addObject("TJHF",TJ);
        mv.addObject("pageAllHouse",pageInfo);
        mv.setViewName("houses");
        return mv;
    }

    @RequestMapping("/findHouseById")
    /*查询房屋详情ByhouseId*/
    public ModelAndView findHouseById(Integer houseId){
        /*调用service，查出想要的信息*/
        HouseView houseById=this.houseService.findHouseById(houseId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("houseInfo",houseById);
        mv.setViewName("details");
        return mv;
    }

    @RequestMapping("/searchByHouseTitle")
    @ResponseBody
    /*查询房屋ByhouseTitle*/
    public ModelAndView searchByHouseTitle(@RequestParam(defaultValue = "1") Integer page,String houseTitle){
        List<HouseView> houseViewList = this.houseService.searchByHouseTitle(page,houseTitle);
        PageInfo pageInfo = new PageInfo(houseViewList);
        ModelAndView mv = new ModelAndView();
        mv.addObject("pageAllHouse",pageInfo);
        mv.setViewName("houses");
        return mv;
    }

}
