package com.yiju.controller;

import com.github.pagehelper.PageInfo;
import com.yiju.bean.House;
import com.yiju.bean.UserInfor;
import com.yiju.pojo.HouseInfo;
import com.yiju.pojo.HouseView;
import com.yiju.service.IHouseService;
import com.yiju.service.Impl.HouseServiceImpl;
import com.yiju.util.YIJuUntil;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(HouseController.BASE_PATH)
public class HouseController {
    public static final String BASE_PATH = "houseController";
    @Autowired
    private IHouseService houseService = new HouseServiceImpl();

    @RequestMapping("/findFourHouseByType")
    /*查询4个房屋信息*/
    public ModelAndView findFourHouseByType() {
        System.out.println("=====");
        List<HouseView> newHouse = this.houseService.findFourHouseByType(0);
        System.out.println(newHouse);
        for (HouseView houseView : newHouse) {
            System.out.println(houseView);
        }
        List<HouseView> oldHouse = this.houseService.findFourHouseByType(1);
        List<HouseView> rentHouse = this.houseService.findFourHouseByType(2);
        ModelAndView mv = new ModelAndView();
        mv.addObject("newHouse", newHouse);
        mv.addObject("oldHouse", oldHouse);
        mv.addObject("rentHouse", rentHouse);
        mv.setViewName("../main");
        return mv;
    }

    @RequestMapping("/findAllHouseByType")
    /*查询所有房屋信息*/
    public ModelAndView findAllHouseByType(@RequestParam(defaultValue = "1") Integer page, Integer houseType) {
        /*调用service，查出想要的信息*/
        List<HouseView> allHouse = this.houseService.findAllHouseByType(page, houseType);
        /*推荐房源*/
        List<HouseView> TJ = this.houseService.findFourHouseByType(houseType);
        ModelAndView mv = new ModelAndView();
        PageInfo pageInfo = new PageInfo(allHouse);
        mv.addObject("TJHF", TJ);
        mv.addObject("pageAllHouse", pageInfo);
        mv.setViewName("houses");
        return mv;
    }

    @RequestMapping("/findHouseById")
    /*查询房屋详情ByhouseId*/
    public ModelAndView findHouseById(Integer houseId) {
        /*调用service，查出想要的信息*/
        HouseView houseById = this.houseService.findHouseById(houseId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("houseInfo", houseById);
        mv.setViewName("details");
        return mv;
    }

    @RequestMapping("/searchByHouseTitle")
    @ResponseBody
    /*查询房屋ByhouseTitle*/
    public ModelAndView searchByHouseTitle(@RequestParam(defaultValue = "1") Integer page, String houseTitle) {
        List<HouseView> houseViewList = this.houseService.searchByHouseTitle(page, houseTitle);
        PageInfo pageInfo = new PageInfo(houseViewList);
        ModelAndView mv = new ModelAndView();
        mv.addObject("pageAllHouse", pageInfo);
        mv.setViewName("houses");
        return mv;
    }

    @RequestMapping("toHousePost.do")
    //toHousePost
    public ModelAndView toHousePost(@RequestParam("houseTitle") String houseTitle,
                              @RequestParam("houseAddress") String houseAddress,
                              @RequestParam("housePrice") BigDecimal housePrice,
                              @RequestParam("priceUnit") String priceUnit,
                              @RequestParam("houseHeadimg") MultipartFile houseHeadimg,
                              @RequestParam("housePlanimg1") MultipartFile housePlanimg1,
                              @RequestParam("housePlanimg2") MultipartFile housePlanimg2,
                              @RequestParam("houseImg1") MultipartFile houseImg1,
                              @RequestParam("houseImg2") MultipartFile houseImg2,
                              @RequestParam("houseImg3") MultipartFile houseImg3,
                              @RequestParam("houseImg4") MultipartFile houseImg4,
                              @RequestParam("houseImg5") MultipartFile houseImg5,
                              @RequestParam("houseImg6") MultipartFile houseImg6,
                              HttpSession session) throws IOException {
        House house = new House();
        house.setHouseTitle(houseTitle);
        house.setHouseAddress(houseAddress);
        house.setHousePrice(housePrice);
        house.setPriceUnit(priceUnit);

        if (houseHeadimg.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHouseHeadimg(priName);
            YIJuUntil.upload(houseHeadimg.getBytes(),priName);
        } if (housePlanimg1.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHousePlanimg1(priName);
            YIJuUntil.upload(housePlanimg1.getBytes(),priName);
        }
        if (housePlanimg2.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHousePlanimg2(priName);
            YIJuUntil.upload(housePlanimg2.getBytes(),priName);
        }
        if (houseImg1.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHouseImg1(priName);
            YIJuUntil.upload(houseImg1.getBytes(),priName);
        }if (houseImg2.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHouseImg2(priName);
            YIJuUntil.upload(houseImg2.getBytes(),priName);
        }if (houseImg3.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHouseImg3(priName);
            YIJuUntil.upload(houseImg3.getBytes(),priName);
        }if (houseImg4.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHouseImg4(priName);
            YIJuUntil.upload(houseImg4.getBytes(),priName);
        }if (houseImg5.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHouseImg5(priName);
            YIJuUntil.upload(houseImg5.getBytes(),priName);
        }if (houseImg6.getSize()!=0){
            String priName = YIJuUntil.getPriName();
            house.setHouseImg6(priName);
            YIJuUntil.upload(houseImg6.getBytes(),priName);
        }
        UserInfor user = (UserInfor) session.getAttribute("userInfor");
        house.setUserId(user.getUserId());
        house.setCreateTime(new Date().getTime());
        house.setUpdateTime(new Date().getTime());
        int i = this.houseService.toHousePost(house);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("housePost2");
        return mv;
    }

    @RequestMapping("/saveHousePost2.do")
    //saveHousePost2
    @ResponseBody
    public String saveHousePost2(HouseInfo houseInfo){
        houseInfo.setHouseId(1);
        houseInfo.setCreateTime(new Date().getTime());
        houseInfo.setUpdateTime(new Date().getTime());
        int i = this.houseService.saveHousePost2(houseInfo);
        JSONObject json = new JSONObject();
        return json.toString();
    }
}
