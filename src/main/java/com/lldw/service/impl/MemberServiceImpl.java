package com.lldw.service.impl;

import com.lldw.dao.MemberMapper;
import com.lldw.pojo.Member;
import com.lldw.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * 用户服务类接口实现类
 */
@Service("memberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    public Member findMemberByPhone(String phone) {
        return memberMapper.findMemberByPhone(phone);
    }

    public void addMember(Member member) {
        memberMapper.addMember(member);
    }

    public Member findMemberByPhoneAndPAssword(String phone, String password) {
        return memberMapper.findMemberByPhoneAndPassword(phone, password);
    }

    public void alterMemberMsg(Member member, String member_Code) {
        memberMapper.alterMemberMsg(member, member_Code);
    }

    public void alterMemberAvatar(String path, String member_Code) {
        memberMapper.alterMemberAvatar(path, member_Code);
    }

    public void alterMemberPasswordByPhone(String newPassword, String phone) {
        memberMapper.alterMemberPasswordByPhone(newPassword, phone);
    }
}
