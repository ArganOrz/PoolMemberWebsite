package com.lldw.pojo;

import java.util.Random;

/**
 * 验证码类
 *
 */
    public class Check {
    int length;
    StringBuilder code = new StringBuilder();

        public void setLength(int length){
        this.length = length;
        }

    /**
     * 根据length返回响应长度的随机验证码
      * @return
     */
    public String getCode(){
        Random random = new Random();
        for (int i = 0; i < length; i++){
            code.append(random.nextInt(9)+1);
        }
        return code.toString();
    }

}
