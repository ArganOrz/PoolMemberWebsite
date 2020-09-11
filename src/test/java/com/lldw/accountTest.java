package com.lldw;

import com.lldw.pojo.Member;
import com.lldw.pojo.VConsume;
import com.lldw.service.ConsumeService;
import com.lldw.service.MemberService;
import com.lldw.service.impl.MemberServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class accountTest {

    public static void main(String[] args) {
        ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
       MemberService a = (MemberService)ac.getBean("accountService");
        ConsumeService consumeService = (ConsumeService) ac.getBean("consumeService");

        List<VConsume> consumes = consumeService.queryConsumesOfMemberByTimeRange("2019/9/3 9:07", "2020/9/3 9:07", "15180173745");
        System.out.println(consumes);

    }

}
