package com.lldw.bean;

import com.lldw.pojo.Invitation;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Component("invitationPageBean")

/**
 * 当前页帖子信息的实体类
 *
 */
public class InvitationPageBean {

    private int totalPage;
    private int currentPage;
    private int pageRow = 5;
    private int totalCount;
    private List<Invitation> currentPageInvitationsList;
    List<String> usernames;
    List<String> avatars;
    List<String> contents;




}
