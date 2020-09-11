package com.lldw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

/**
 * 用于返回主页有关的视图
 */
public class homePageController {


    /**
     * 返回主页
     * @return
     */
    @RequestMapping("/")
    public String getIndexPage(){
        return "index";
    }

    /**
     * 返回精选内容
     * @return
     */
    @RequestMapping("/featuredContent")
    public String featuredContent(){
        return "featuredContent";
    }

    @RequestMapping("/cultivate")
    public String Cultivate(){
        return "cultivate";
    }

    @RequestMapping("/adult")
    public String Adult(){
        return "adult";
    }
    @RequestMapping("/teenager")
    public String Teenager(){
        return "teenager";
    }
    @RequestMapping("/kid")
    public String Kid(){
        return "kid";
    }



    @ResponseBody
    @RequestMapping("/sendMsg")
    public String sendMst(){
        return "correct send!";
    }



}
