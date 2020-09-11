package com.lldw.service;

import com.lldw.pojo.Member;


/**
 * 用户服务类接口
 */
public interface MemberService {

    /**
     * 根据邮箱查用户
     * @param phone
     * @return
     */
    Member findMemberByPhone(String phone);

    /**
     * 添加用户
     * @param account
     */
    void addMember(Member account);

    /**
     * 根据邮箱和密码查找用户
     * @param phone
     * @param password
     * @return
     */
    Member findMemberByPhoneAndPAssword(String phone, String password);

    /**
     * 更改用户信息
     * @param account
     * @param member_Code
     */
    void alterMemberMsg(Member account, String member_Code);

    /**
     * 更改用户头像
     * @param path
     * @param member_Code
     */
    void alterMemberAvatar(String path, String member_Code);

    void alterMemberPasswordByPhone(String newPassword, String phone);

}
