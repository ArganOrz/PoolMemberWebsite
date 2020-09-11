package com.lldw.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class VConsume {
    String name;
    String phone;
    String goodsName;
    String discountName;
    Float discount;
    Integer count;
    Double price;
    String time;

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getDiscountName() {
        return discountName;
    }

    public void setDiscountName(String discountName) {
        this.discountName = discountName;
    }

    public Float getDiscount() {
        return discount;
    }

    public void setDiscount(Float discount) {
        this.discount = discount;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getTime() {

        return time;
    }

    public void setTime(Date time) {
        SimpleDateFormat s = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");

        this.time =  s.format(time);
    }
}
