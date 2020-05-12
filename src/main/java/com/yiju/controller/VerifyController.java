package com.yiju.controller;

import com.yiju.bean.UserAuth;
import com.yiju.bean.UserInfor;
import com.yiju.service.IVerifyService;
import com.yiju.service.Impl.VerifyServiceImpl;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;

/*实名认证*/
@Controller
@RequestMapping(VerifyController.VERIFY_PATH)
public class VerifyController {
    public static final String VERIFY_PATH = "verifyController";
    @Autowired
    private IVerifyService verifyService = new VerifyServiceImpl();

    @RequestMapping("/saveVerify")
    @ResponseBody
    /*保存实名认证*/
    public String saveVerify(@RequestParam("card") String card, @RequestParam("address")String cardaddress,
                             @RequestParam("nowaddress")String nowaddress , HttpSession session){
        UserInfor userInfor = (UserInfor) session.getAttribute("userInfor");
        Integer userId = userInfor.getUserId();
        long createdateTime = new Date().getTime();
        long updatedateTime = new Date().getTime();
        UserAuth userAuth = new UserAuth(userId,userInfor.getTruename(),userInfor.getGender(),card,cardaddress,nowaddress,createdateTime,updatedateTime);
        int i = verifyService.addVerifyInfor(userAuth);
        JSONObject jsonObject = new JSONObject();
        session.setAttribute("userAuth",userAuth);
        return jsonObject.toString();
    }

    @RequestMapping("/removeVerify")
    /*删除实名认证*/
    public String removeVerify(HttpSession session){
        UserInfor userInfor = (UserInfor)session.getAttribute("userInfor");
        System.out.println(userInfor.getUserId());
        int i =this.verifyService.delUserAuthByUserId(userInfor.getUserId());
        System.out.println(i);
        session.removeAttribute("userAuth");
        return "redirect:/pages/verify.jsp";
    }



}
