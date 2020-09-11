package com.lldw.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Charge {
    String charge_Code;
    String time;
    Double price;
    Double balance;

    public String getCharge_Code() {
        return charge_Code;
    }

    public void setCharge_Code(String charge_Code) {
        this.charge_Code = charge_Code;
    }

    public String getTime() {
        return time;
    }

    public void setTime(Date time) {
        SimpleDateFormat s = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        this.time = s.format(time);
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }
}
