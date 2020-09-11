package com.lldw.controller;

import com.lldw.bean.InvitationPageBean;
import com.lldw.pojo.Invitation;
import com.lldw.pojo.InvitationReply;
import com.lldw.pojo.Member;
import com.lldw.service.InvitationService;
import javafx.scene.input.DataFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller

/**
 * 用于控制帖子相关的信息
 */
public class InvitationController {

    @Autowired
    InvitationPageBean invitationPageBean;

    @Autowired
    @Qualifier("invitationService")
    private InvitationService invitationService;

    /**
     *  获取当前页面需要的帖子信息和帖子有关的用户信息
     * @param model
     * @param currentPage
     * @return
     */
    @RequestMapping("/invitation")
    public ModelAndView getInvitationPage(ModelAndView model, String currentPage, HttpServletRequest request){



        if(currentPage == null){
            invitationPageBean.setCurrentPage(1);
        }
        else {
            invitationPageBean.setCurrentPage(Integer.parseInt(currentPage));
        }
        String conditionContent = request.getParameter("content");
        List<Invitation> invitations;
        if( conditionContent!= null && !"".equals(conditionContent)){
            invitations =  invitationService.queryInvitationsByPageAndContentCondition(invitationPageBean.getCurrentPage(), invitationPageBean.getPageRow(),conditionContent);
        }
        else {
            invitations = invitationService.queryInvitationsByPage(invitationPageBean.getCurrentPage(), invitationPageBean.getPageRow());

        }

        List<String> usernames = new ArrayList<String>();
        List<String> avatars = new ArrayList<String>();
        List<String> contents = new ArrayList<String>();

        for(Invitation i : invitations){
            String username = invitationService.queryInvitationPosterNameByMemberCode(i.getMember_Code());
            String avatar = invitationService.queryInvitationPosterAvatarByMemberCode(i.getMember_Code());
            String content = invitationService.queryInvitationFirstContentByIid(i.getIid());

            usernames.add(username);
            avatars.add(avatar);
            contents.add(content);

        }

        int totalCount = invitationService.queryTotalCountOfInvitation();
        int pageRow = invitationPageBean.getPageRow();
        int totalPage = (totalCount < pageRow ? 1 : totalCount/pageRow + (totalCount%pageRow == 0 ? 0:1));

        //设置当前页的帖子列表
        invitationPageBean.setCurrentPageInvitationsList(invitations);

        //设置当前页帖子的信息
        invitationPageBean.setUsernames(usernames);
        invitationPageBean.setAvatars(avatars);
        invitationPageBean.setContents(contents);

        invitationPageBean.setTotalCount(totalCount);
        invitationPageBean.setTotalPage(totalPage);

        model.addObject("invitationPageBean", invitationPageBean);
        model.setViewName("invitation");
        return model;
    }


    /**
     * 用于完成用户发帖
     * @param request
     * @param session
     * @return
     */
    @RequestMapping("/postInvitation")
    public String postInvitation(HttpServletRequest request, HttpSession session){

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String now = df.format(new Date());


        Member member = (Member) session.getAttribute("account");
        if(member == null){
            return "no_login";
        }
        String member_Code = member.getMember_Code();

        //获取发帖内容
        String invitationContent = request.getParameter("invitationContent");
        String theme = request.getParameter("theme");
        //发帖主题

        try {
            invitationService.addInvitation(member_Code, theme, now, invitationContent);
            return "redirect:/invitation?currentPage=1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/invitation?currentPage=1";
        }

    }


    /**
     * 用于帖子具体内容的页面
     * @param iid
     * @param modelAndView
     * @return
     */
    @RequestMapping("/i/{iid}")
    public ModelAndView invitationReply(@PathVariable("iid") String iid, ModelAndView modelAndView){

        List<InvitationReply> invitationReplies = invitationService.queryInvitationReplyByIidWithOrder(iid);
        List<String> usernames = new ArrayList<String>();
        List<String> avatars = new ArrayList<String>();
        List<String> introductions = new ArrayList<String>();

        ///!!!!!需要优化！！！！！
        for(int i = 0; i < invitationReplies.size();  i++){

            String member_Code =  invitationReplies.get(i).getMember_Code();

            String username = invitationService.queryMemberNameByIidAndFlor(iid, member_Code);
            String avatar = invitationService.queryMemberAvatarByIidAndFlor(iid, member_Code);
            String introduction = invitationService.queryMemberIntroductionByIidAndFlor(iid, member_Code);

            usernames.add(username);
            avatars.add(avatar);
            introductions.add(introduction);
        }
        String theme = invitationService.queryInvitationThemeByIid(iid);

        int totalCount = invitationService.queryTotalCountOfInvitationReplyByIid(iid);


        modelAndView.addObject("totalCount", totalCount);
        modelAndView.addObject("theme",theme);
        modelAndView.addObject("usernames",usernames);
        modelAndView.addObject("avatars",avatars);
        modelAndView.addObject("introductions",introductions);
        modelAndView.addObject("invitationReplies",invitationReplies);
        modelAndView.setViewName("invitationReply");
        return modelAndView;

    }

    /**
     * 用于完成用户跟帖
     * @param iid
     * @param content
     * @param session
     * @return
     */
    @RequestMapping("addReply")
    @ResponseBody
    public String addReply(String iid , String content, HttpSession session){

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = df.format(new Date());

        Member account = (Member) session.getAttribute("account");

        try {
            invitationService.addInvitationReply(Integer.parseInt(iid), account.getMember_Code(), content, time);
            return "correct";
        }catch (Exception e){
            e.printStackTrace();
            return "error";
        }



    }


    @ResponseBody
    @RequestMapping("/deleteInvitationReply")
    public String deleteInvitationReply(String rid){
        try {
            invitationService.deleteInvitationReplyByRid(rid);
            return "correct";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }

    }

    @RequestMapping("/deleteInvitation")
    public String deleteInvitation(String iid){

        invitationService.deleteInvitationByIid(iid);
        return "bindaccount";

    }

}
