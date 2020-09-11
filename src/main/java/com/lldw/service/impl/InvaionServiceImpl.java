package com.lldw.service.impl;


import com.lldw.dao.MemberMapper;
import com.lldw.dao.InvitationMapper;
import com.lldw.pojo.Invitation;
import com.lldw.pojo.InvitationReply;
import com.lldw.service.InvitationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 帖子服务类接口的实现类
 */
@Service("invitationService")
public class InvaionServiceImpl implements InvitationService {

    @Autowired
    InvitationMapper invitationMapper;

    @Autowired
    MemberMapper memberMapper;

    @Override
    public List<Invitation> queryInvitationsByPage(Integer currentPage, Integer pageRow) {
        int min = (currentPage - 1) * pageRow;
        if (currentPage != 1) {
            min++;
        }
        int max = pageRow*currentPage;
        return invitationMapper.queryInvitationsByPageLimit(min, max);
    }

    @Override
    public int queryTotalCountOfInvitation() {
        return invitationMapper.queryTotalCountOfInvitation();
    }

    @Override
    public void addInvitation(String member_Code, String theme, String now, String invitationContent) {
        invitationMapper.addInvitation(member_Code, theme, now);
        Integer iid =  invitationMapper.queryInvitationIidByMemberCodeAndTime(member_Code, now);
        invitationMapper.addInvitationReply(iid, member_Code, now, invitationContent, 1);
    }

    @Override
    public List<InvitationReply> queryInvitationReplyByIidWithOrder(String iid) {
        return invitationMapper.queryInvitationReplyByIidWithOrder(Integer.parseInt(iid));
    }

    @Override
    public void addInvitationReply(Integer iid, String member_Code, String content, String time) {
        int flor = invitationMapper.queryMaxFlorByIid(iid) + 1;
        invitationMapper.addInvitationReply(iid, member_Code, time, content,flor);
    }

    @Override
    public String queryInvitationPosterNameByMemberCode(String member_Code) {

        return memberMapper.queryNameByMemberCode(member_Code);
    }

    @Override
    public String queryInvitationPosterAvatarByMemberCode(String member_Code) {
        return memberMapper.queryAvatarByMemberCode(member_Code);
    }

    @Override
    public String queryInvitationFirstContentByIid(Integer iid) {
        return invitationMapper.queryFirstContentByIid(iid);
    }

    @Override
    public String queryMemberNameByIidAndFlor(String iid, String member_Code) {
        return memberMapper.queryNameByMemberCode(member_Code);
    }

    @Override
    public String queryMemberAvatarByIidAndFlor(String iid, String member_Code) {
        return memberMapper.queryAvatarByMemberCode(member_Code);
    }

    @Override
    public String queryMemberIntroductionByIidAndFlor(String iid, String member_Code) {
        return memberMapper.queryIntroduction(member_Code);
    }

    @Override
    public String queryInvitationThemeByIid(String iid) {

        return  invitationMapper.queryInvitationThemeByIid(iid);
    }

    @Override
    public int queryTotalCountOfInvitationReplyByIid(String iid) {
        return invitationMapper.queryTotalCountOfInvitationReplyByIid(iid);
    }

    @Override
    public void deleteInvitationReplyByRid(String rid) {
        invitationMapper.deleteInvitationReplyByRid(rid);
    }

    @Override
    public List<Invitation> queryInvitationsByPageAndContentCondition(Integer currentPage, Integer pageRow, String content) {
        int min = (currentPage - 1) * pageRow;
        int max = pageRow;
        return invitationMapper.queryInvitationsByPageAndContentCondition(min, max, content);

    }


    @Override
    public List<Invitation>queryInvitationsOfMemberByMemberCode(String member_Code){
       return invitationMapper.queryInvitationsOfMemberByMemberCode(member_Code);
    }

    @Override
    public void deleteInvitationByIid(String iid) {
        invitationMapper.deleteInvitationRepliesByIid(iid);
        invitationMapper.deleteInvitationByIid(iid);
    }


}
