package com.lldw.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor

/**
 * 跟帖实体类
 */
public class InvitationReply {

    Integer rid;
    Integer iid;
    String member_Code;
    String content;
    Date replyTime;
    Integer flor;

}
