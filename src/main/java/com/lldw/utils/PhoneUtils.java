package com.lldw.utils;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Properties;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;

/**
 * 邮箱工具类
 * 可以根据邮箱配置文件更改配置信息
 * 通过调用sendEmail来发送邮件
 * LTAI4G3rXK7GKEUvXKNSc1V1
 * F1FW42wOrUFCRbBIpUirvqlGgQCPsU
 */
public class PhoneUtils {

    public static void sendCheckCodeTo(String phone, String checkCode) throws ClientException {
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4G4ZT5tVfhe7qbvE2tuL", "7NdtYL6uegLtY6n89dAx6tEU7G8kLj");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();

        request.setSysMethod(MethodType.POST);
        request.setSysDomain("dysmsapi.aliyuncs.com");
        request.setSysVersion("2017-05-25");
        request.setSysAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "由游有友");
        request.putQueryParameter("TemplateCode", "SMS_201480909");
        request.putQueryParameter("TemplateParam", "{code:"+checkCode+"}");
        CommonResponse response = client.getCommonResponse(request);
        System.out.println(response.getData());

    }

    private static SimpleEmail email;

    private static InputStream in = PhoneUtils.class.getClassLoader().getResourceAsStream("mail.properties");

    //邮箱配置文件
    private static  Properties properties = new Properties();

    static {
        in = PhoneUtils.class.getClassLoader().getResourceAsStream("mail.properties");

        properties = new Properties();

        try {
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    private static void emailInit(){

        email = new SimpleEmail();


        email.setSSLOnConnect(true);
        email.setHostName(properties.getProperty("hostname"));
        email.setSmtpPort( Integer.parseInt(properties.getProperty("smtpport")));


        email.setAuthentication(properties.getProperty("username"), properties.getProperty("password"));
        email.setCharset("UTF-8");


        try {
            email.setFrom(properties.getProperty("username"), "冷凉淡忘");
        } catch (EmailException e) {
            e.printStackTrace();
        }
    }


    public static void sendEmail(String toUser, String subject, String content) {
        emailInit();
        try {

            email.addTo(toUser);
            email.setSubject(subject);
            email.setMsg(content);
            email.send();

        }catch (Exception e){
            System.out.println("发送邮件失败");
        }
    }
}
