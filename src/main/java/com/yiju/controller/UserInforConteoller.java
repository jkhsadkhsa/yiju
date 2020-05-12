package com.yiju.controller;

import com.yiju.bean.Collect;
import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfor;
import com.yiju.pojo.CollectView;
import com.yiju.service.IUserInforService;
import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/*用户模块*/
@Controller
@RequestMapping(UserInforConteoller.BASE_CONTROLLER)
public class UserInforConteoller {
    public final static String BASE_CONTROLLER = "userInforController";
    @Autowired
    private IUserInforService userInforService;
    @ResponseBody
    @RequestMapping("/findUserByPhone")
    /*根据手机号查询==登录*/
    public String findUserByPhone(@Param(value = "phone") String phone, @Param(value = "password") String password, HttpSession session){
        //1、查不到用户的时候,提示注册
        //2、 密码错误，==重新登录
        //3、 密码正确 === 登录成功
        System.out.println(phone+"123"+password);
        JSONObject jsonObject = new JSONObject();
        UserInfor userInfor = this.userInforService.findUserByPhone(phone);
        System.out.println(userInfor);
        if (userInfor==null){
            System.out.println("没有这个用户");
            jsonObject.put("result",0);
        }else if (password.equals(userInfor.getPassword())==false){
            System.out.println("密码错误");
            jsonObject.put("result",1);
        }
        else {
            System.out.println("登录成功");
            jsonObject.put("result",2);
            /*将用户保存在session，服务器开启阶段*/
            session.setAttribute("userInfor",userInfor);
        }
        System.out.println(jsonObject.toString());
        return jsonObject.toString();
    }

    @RequestMapping("/signup")
    /*注册*/
    @ResponseBody
    /*
    * 当ajax直接进入error时，判断是否添加了@ResponseBody注释。
    * 是否返回json类型的字符串格式
    * 将sucess和error内容互调
    * */
    public String signup(@RequestParam("phone") String phone,@RequestParam("password1") String passwrod1){
        /*1、首先判断一下数据库是否有这条数据*/
        JSONObject jsonObject = new JSONObject();
        UserInfor userByPhone = this.userInforService.findUserByPhone(phone);
        if (userByPhone!=null){
            System.out.println("该用户已注册");
            jsonObject.put("result",0);
        }
        else {
            System.out.println("注册");
            int i =this.userInforService.addUserInfor(phone,passwrod1);
            System.out.println(i);
            jsonObject.put("result",1);
        }
        return jsonObject.toString() ;
    }

    @RequestMapping("/saveEdit")
    @ResponseBody
    /*保存修改*/
    public String saveEdit(UserInfor userInfor,HttpSession session){
        JSONObject json = new JSONObject();
        int i = this.userInforService.saveEdit(userInfor);
        System.out.println(i);
        /*更新后，jsp依旧读取的是session对象，需要再次发出请求设置新的session*/
        session.setAttribute("userInfor",userInfor);
        return json.toString();
    }

    @RequestMapping("/verify")
    /*查看用户实名认证*/
    public ModelAndView verify(HttpSession session){
        UserInfor userInfor = (UserInfor) session.getAttribute("userInfor");
        UserAuth userAuth = this.userInforService.findUserAuthById(userInfor.getUserId());
        ModelAndView mv = new ModelAndView();
        mv.addObject("userAuth",userAuth);
        mv.setViewName("verify");
        return mv;
    }

    @RequestMapping("/exit")
    /*退出*/
    public String exit(HttpSession session){
        session.removeAttribute("userInfor");
        return "redirect:/pages/login.jsp";
    }

    @RequestMapping("/updUserByUserId")
    @ResponseBody
    /*根据id修改User*/
    public String updUserByUserId(@RequestParam("oldPassword")String oldPassword,@RequestParam("newPassword1")String newPassword1,
                                  @RequestParam("newPassword2")String newPassword2,HttpSession session){
        UserInfor userInfor = (UserInfor) session.getAttribute("userInfor");
        JSONObject json = new JSONObject();
        if (!userInfor.getPassword().equals(oldPassword)){
            System.out.println("原密码错误");
            json.put("result",0);
        }
        else {
            userInfor.setPassword(newPassword1);
            int i = this.userInforService.updUserByUserId(userInfor);
            json.put("result",1);
        }
        return json.toString();
    }

    //favorite.do
    @RequestMapping("favorite.do")
    public  ModelAndView favorite (HttpSession session){
        UserInfor user = (UserInfor) session.getAttribute("userInfor");

        List<CollectView> collectViews = this.userInforService.getCollectViewById(user.getUserId());

        // 响应数据并响应页面
        ModelAndView mv = new ModelAndView();
        mv.addObject("collectViews",collectViews);
        mv.setViewName("favorite");
        return mv;
    }

    //addCollect
    @RequestMapping("/addCollect.do")
    @ResponseBody
    public String addCollect(@RequestParam("houseId") Integer houseId, HttpSession session){
        UserInfor user = (UserInfor) session.getAttribute("userInfor");
        JSONObject json = new JSONObject();

        //1、先查询判断
        Collect c = this.userInforService.findCollectById(user.getUserId(),houseId);
        if (c!=null){
            System.out.println("有数据");
            json.put("result","0");
        }else {
            Collect collect = new Collect();
            collect.setUserId(user.getUserId());
            collect.setHouseId(houseId);
            collect.setCreateTime(new Date().getTime());
            collect.setUpdateTime(new Date().getTime());

            int i = this.userInforService.addCollect(collect);
            json.put("result","1");
            return json.toString();
        }
        return json.toString();
    }

    @RequestMapping("/delCollect.do")
    public String delConllect(@RequestParam("collId") Integer collId){
        int i = this.userInforService.delCollect(collId);
        return "redirect:favorite.do";
    }

}






