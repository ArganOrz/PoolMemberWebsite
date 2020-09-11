package com.lldw.dao;


import com.lldw.pojo.Member;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
/**
 * 操作用户数据库类
 */
public interface MemberMapper {


    /**
     * 根据邮箱查找用户
     * @param phone 用户邮箱
     * @return 用户对象
     */
    Member findMemberByPhone(String phone);


    /**\
     * 添加用户
     * @param member 用户实体对象
     */
    void addMember(Member member);

    /**
     * 根据账号密码查找用户
     * @param phone
     * @param password
     * @return 返回用户
     */
    Member findMemberByPhoneAndPassword(@Param("phone") String phone,@Param("password") String password);

    /**
     * 根据用户id查找用户名
     * @param member_Code
     * @return
     */
    String queryNameByMemberCode(String member_Code);

    /**
     * 根据用户id查找用户头像
     * @param member_Code
     * @return
     */
    String queryAvatarByMemberCode(String member_Code);


    /**
     * 更改用户信息
     * @param member
     * @param member_Code
     */
    void alterMemberMsg(@Param("member") Member member,@Param("id") String member_Code);

    //更改用户头像
    void alterMemberAvatar(@Param("path") String path,@Param("member_Code") String member_Code);

    void alterMemberPasswordByPhone(@Param("newPassword") String newPassword,@Param("phone") String phone);

    String queryIntroduction(String member_Code);
}
