package com.lldw.dao;

import com.lldw.pojo.VConsume;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ConsumeMapper {
    List<VConsume> queryConsumesOfMemberByPhone(String phone);

    List<VConsume> queryConsumesOfMemberByTimeRange(@Param("startTime") String startTime,@Param("endTime") String endTime, @Param("phone") String phone);
}
