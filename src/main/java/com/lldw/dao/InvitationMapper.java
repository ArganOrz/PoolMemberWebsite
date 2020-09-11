package com.lldw.dao;

import com.lldw.pojo.Invitation;
import com.lldw.pojo.InvitationReply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
/**
 * 操作帖子实体类
 */
public interface InvitationMapper {

    /**
     *
     * @param min
     * @param max
     * @return 返回当前页帖子列表
     */
    List<Invitation> queryInvitationsByPageLimit(@Param("min") int min,@Param("max") int max);

    /**
     * 查询全部帖子数
     * @return
     */
    int queryTotalCountOfInvitation();

    /**
     * 添加帖子
     * @param member_Code
     * @param theme
     * @param now
     */
    void addInvitation(@Param("member_Code") String member_Code,@Param("theme") String theme,@Param("time") String now);

    /**
     * 根据用户id和时间查找帖子号
     * @param member_Code
     * @param now
     * @return
     */
    Integer queryInvitationIidByMemberCodeAndTime(@Param("member_Code") String member_Code,@Param("time") String now);

    /**
     * 添加跟帖
     * @param iid
     * @param member_Code
     * @param now
     * @param invitationContent
     * @param floor
     */
    void addInvitationReply(@Param("iid") int iid , @Param("member_Code") String member_Code, @Param("time")String now, @Param("content") String invitationContent, @Param("floor") int floor);


    /**
     * 根据楼层查找跟帖信息
     * @param iid
     * @return
     */
    List<InvitationReply> queryInvitationReplyByIidWithOrder(int iid);

    /**
     * 根据帖子号查询这个帖子里最大的楼层
     * @param iid
     * @return
     */
    int queryMaxFlorByIid(Integer iid);

    /**
     * 根据帖子号查找第一个跟帖也就是发帖人最开始发帖的内容
     * @param iid
     * @return
     */
    String queryFirstContentByIid(Integer iid);

    String queryInvitationThemeByIid(String iid);

    int queryTotalCountOfInvitationReplyByIid(String iid);

    void deleteInvitationReplyByRid(String rid);

    List<Invitation> queryInvitationsByPageAndContentCondition(@Param("min") int min, @Param("max") int max, @Param("content") String content);

    List<Invitation> queryInvitationsOfMemberByMemberCode(String member_Code);

    void deleteInvitationByIid(String iid);

    void deleteInvitationRepliesByIid(String iid);
}

