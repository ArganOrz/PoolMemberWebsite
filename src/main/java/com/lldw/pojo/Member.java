package com.lldw.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.awt.*;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * 用户的实体类
 */
public class Member {

    String avatar;
    String member_Code;
    String name;
    String phone;
    String password;
    String sex;
    String address;
    String introduction;
    Double balance;
    Integer status;
    String birthday;
}
