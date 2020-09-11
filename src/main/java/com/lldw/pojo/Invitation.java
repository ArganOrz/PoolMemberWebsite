package com.lldw.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * 帖子实体类
 */
public class Invitation {
    Integer iid;
    Date postTime;
    String theme;
    String member_Code;
}
