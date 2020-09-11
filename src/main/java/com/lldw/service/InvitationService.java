package com.lldw.service;

import com.lldw.pojo.Invitation;
import com.lldw.pojo.InvitationReply;

import java.util.List;


/**
 * 帖子服务类接口
 */
public interface InvitationService {

    /**
     * 查询当前页的帖子
     * @param page
     * @param pageRow
     * @return
     */
    List<Invitation> queryInvitationsByPage(Integer page, Integer pageRow);

    /**
     * 查询全部帖子数量
     * @return
     */
    int queryTotalCountOfInvitation();

    /**
     * 添加帖子
     * @param member_Code
     * @param theme
     * @param now
     * @param invitationContent
     */
    void addInvitation(String member_Code, String theme, String now, String invitationContent);

    /**
     * 根据楼层顺序查询跟贴内容
     * @param iid
     * @return
     */
    List<InvitationReply> queryInvitationReplyByIidWithOrder(String iid);

    /**
     * 添加跟帖
     * @param iid
     * @param member_Code
     * @param content
     * @param time
     */
    void addInvitationReply(Integer iid, String member_Code, String content, String time);

    /**
     * 查询发帖人的昵称
     * @param member_Code
     * @return
     */
    public String queryInvitationPosterNameByMemberCode(String member_Code);

    /**
     * 查询发帖人的头像
     * @param member_Code
     * @return
     */
    public String queryInvitationPosterAvatarByMemberCode(String member_Code);

    /**
     * 查询发帖人发帖时的第一条信息
     * @param iid
     * @return
     */
    public String queryInvitationFirstContentByIid(Integer iid);

    public String queryMemberNameByIidAndFlor(String iid, String member_Code);

    public String queryMemberAvatarByIidAndFlor(String iid, String member_Code);

    public String queryMemberIntroductionByIidAndFlor(String iid, String member_Code);

    String queryInvitationThemeByIid(String iid);

    int queryTotalCountOfInvitationReplyByIid(String iid);

    void deleteInvitationReplyByRid(String rid);


    List<Invitation>queryInvitationsByPageAndContentCondition(Integer page, Integer pageRow,String content);

    public List<Invitation>queryInvitationsOfMemberByMemberCode(String member_Code);

    void deleteInvitationByIid(String iid);
}

