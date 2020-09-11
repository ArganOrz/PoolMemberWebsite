package com.lldw.controller;

import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.lldw.pojo.*;
import com.lldw.service.ChargeService;
import com.lldw.service.ConsumeService;
import com.lldw.service.MemberService;
import com.lldw.service.InvitationService;
import com.lldw.utils.PhoneUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/account")
/**
 * 用户控制器
 */
public class MemberController {
    @Autowired
    @Qualifier("memberService")
    MemberService memberService;
    @Autowired
    InvitationService invitationService;
    @Autowired
    ConsumeService consumeService;
    @Autowired
    ChargeService chargeService;
    /**
     * 用于返回注册页面
     * @param model
     * @return
     */
    @RequestMapping("/register")
    public String register(Model model){
        return "register";
    }

    /**
     * 用于获取验证码
     * @param session
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/getCheck")
    public String getCheck(HttpSession session, HttpServletRequest request){
        //如果再次请求验证码，则移除之前的
        session.removeAttribute("checkCode");
        String phone = request.getParameter("phone");

        //先判断邮箱是否存在，如果存在就不发送验证码，并返回不发送的消息

        Member member = memberService.findMemberByPhone(phone);
        if(member != null){
            return "phone_registed";
        }
        //否则发送验证码
        else {
            //生成验证码类，生成验证码存到session中
            Check check = new Check();
            check.setLength(5);

            String checkCode = check.getCode();
            session.setAttribute("checkCode", checkCode);

            //设置验证码有效时间为5分钟
            session.setMaxInactiveInterval(300);

        try {
            //再将验证码通过邮件发送
            PhoneUtils.sendCheckCodeTo(phone, checkCode);
        } catch (ClientException e) {
            e.printStackTrace();
            return "error";
        }
            return "cSend";
        }

    }


    /**
     * 用于完成用户注册
     * @param session
     * @param request
     * @return 返回有关用户注册的消息
     */
    @ResponseBody
    @RequestMapping("/regist")
    public String regist(HttpSession session, HttpServletRequest request){
        String user_checkCode = request.getParameter("checkCode");
        String send_checkCode = (String) session.getAttribute("checkCode");


        if(!user_checkCode.equals(send_checkCode)){
            return "error checkCode";
        }
        else{
            Member member = new Member();
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            member.setName(name);
            member.setPhone(phone);
            member.setPassword(password);
            try {
                memberService.addMember(member);
                session.removeAttribute("checkCode");
                return "注册成功";
            }catch (Exception e){
                e.printStackTrace();
                return "注册失败";
            }
        }
    }


    /**
     * 用于实现用户登录
     * @param request
     * @param session
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping("/login")
    public Object login(HttpServletRequest request, HttpSession session, ModelAndView model){
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        //如果phone或者password都为空，说明用户是要访问登录页面
        if(phone == null && password == null)
        {
            model.setViewName("login");
            return model;
        }

        Member member = memberService.findMemberByPhoneAndPAssword(phone, password);

        if(member != null){
            session.setAttribute("account", member);
            return "login_success";
        }

        return "login_error";

    }

    /**
     * 返回用户个人信息页面
     * @return
     */
    @RequestMapping("/bindaccount")
    public ModelAndView bindMember(HttpSession session, ModelAndView modelAndView){
        Member member = (Member) session.getAttribute("account");
        List<Invitation> invitations = null;
        if(member != null){
            invitations   = invitationService.queryInvitationsOfMemberByMemberCode(member.getMember_Code());

        }


        modelAndView.addObject("invitations", invitations);
        modelAndView.setViewName("bindaccount");
        return modelAndView;
    }

    @RequestMapping("/bindaccount/check")
    public ModelAndView Check(ModelAndView modelAndView, HttpSession session){
        modelAndView.setViewName("check");
        Member member = (Member) session.getAttribute("account");
        List<VConsume> consumes = consumeService.queryConsumesOfMemberByPhone(member.getPhone());

        List<Charge> charges = chargeService.queryChargesOfMemberByMemberCode(member.getMember_Code());

        modelAndView.addObject("charges", charges);
        modelAndView.addObject("consumes", consumes);
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/bindaccount/check/searchConsumeReordByTime")
    public List<VConsume> searchConsumeReordByTime(HttpServletRequest request, HttpSession session){
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        startTime = startTime.replaceAll("T", " ");
        endTime = endTime.replaceAll("T", " ");

        Member member = (Member) session.getAttribute("account");

        List<VConsume> consumes = consumeService.queryConsumesOfMemberByTimeRange(startTime, endTime, member.getPhone());
        return consumes;
    }

    @ResponseBody
    @RequestMapping("/bindaccount/check/searchConsumeChargeByTime")
    public List<Charge> searchConsumeChargeByTime(HttpServletRequest request, HttpSession session){
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        startTime = startTime.replaceAll("T", " ");
        endTime = endTime.replaceAll("T", " ");

        Member member = (Member) session.getAttribute("account");

        List<Charge> charges = chargeService.queryChargesOfMemberByTimeRange(startTime, endTime, member.getMember_Code());
        return charges;
    }


        /**
         * 用于完成用户退出登陆
         * @param session
         * @return
         */
    @RequestMapping("/exitLogin")
    @ResponseBody
    public String exitLogin(HttpSession session){
        try {
            session.removeAttribute("account");
        }catch (Exception e){
            return "error";
        }

        return "correct";

    }

    /**
     * 用于改变用户信息，包括昵称、性别、地址、生日、简介
     * @param member
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/alterAccountMsg")
    public String alterMemberMsg(Member member, HttpSession session){
        Member loginMember = (Member) session.getAttribute("account");
        if(member != null){
            try {
                memberService.alterMemberMsg(member, loginMember.getMember_Code());
                Member updateMember = memberService.findMemberByPhoneAndPAssword(loginMember.getPhone(), loginMember.getPassword());
                session.setAttribute("account", updateMember);
                return "correct";
            }catch (Exception e){
                e.printStackTrace();
                return "error";
            }
        }
        return "请先登录！";
    }

    /**
     * 用于改变用户头像
     * @param request
     * @param file
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/alterAvatar")
    public String alterAvatar(HttpServletRequest request,@RequestParam("file") MultipartFile file, HttpSession session){

        Member member = (Member) session.getAttribute("account");
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
        String today = simpleDateFormat.format(date);

        String realPath = request.getRealPath("/upload/image" );
        File f = new File(realPath + "/" + today);

        //获取原始图片的扩展名
        String originalFileName = file.getOriginalFilename();
        String newFileName = UUID.randomUUID()+originalFileName;
        //新文件的路径
        String  newFilePath = realPath + "/" + today+ "/"+ newFileName;
        String relativePath = "/upload/image/" + today + "/" + newFileName;

        try {
            memberService.alterMemberAvatar(relativePath, member.getMember_Code());
        }catch (Exception e){
            e.printStackTrace();
        }


        try {
            file.transferTo(new File(newFilePath));
            member.setAvatar(relativePath);
            session.setAttribute("member", member);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    @RequestMapping("/find")
    public String findMemberPassword(){
        return "find";
    }

    @ResponseBody
    @RequestMapping("/getFindPasswordCheckCode")
    public String getFindPasswordCheckCode(HttpSession session, HttpServletRequest request){
        //如果再次请求验证码，则移除之前的
        session.removeAttribute("findPasswordCheckCode");

        String phone = request.getParameter("phone");
        //先判断邮箱是否存在，如果存在就不发送验证码，并返回不发送的消息
        Member member = memberService.findMemberByPhone(phone);
        if(member == null){
            return "phone_notexist";
        }
        //否则发送验证码
        else {
            //生成验证码类，生成验证码存到session中
            Check check = new Check();
            check.setLength(6);
            String checkCode = check.getCode();
            session.setAttribute("findPasswordCheckCode", checkCode);
            //设置验证码有效时间为5分钟
            session.setMaxInactiveInterval(300);
            //再将验证码通过邮件发送
            try {
                PhoneUtils.sendCheckCodeTo(phone, checkCode);
            }catch (ClientException e) {
                e.printStackTrace();
            }

            return "cSend";
        }
    }

    @ResponseBody
    @RequestMapping("/confirmFindPasswordCheckCode")
    public String confirmFindPasswordCheckCode(HttpSession session, String findPasswordCheckCode){
        String checkCode = (String) session.getAttribute("findPasswordCheckCode");

        if(checkCode.equals(findPasswordCheckCode)){
            session.removeAttribute("findPasswordCheckCode");
            return "correct";
        }
        else {
            return "error";
        }
    }


    @ResponseBody
    @RequestMapping("/alterPassword")
    public String alterPassword(String newPassword, String phone, HttpSession session){
        Member member = (Member) session.getAttribute("account");
        if(member != null){
            if(member.getPhone() == phone){
                session.removeAttribute("account");
            }
        }
        try {
            memberService.alterMemberPasswordByPhone(newPassword, phone);
            return "correct";
        } catch (Exception e) {
            e.printStackTrace();
           return "error";
        }
    }
}
