package com.lldw.dao;

import com.lldw.pojo.Charge;
import com.lldw.pojo.VConsume;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ChargeMapper {
    List<Charge> queryChargesOfMemberByMemberCode(String member_Code);

    List<Charge> queryConsumesOfMemberByTimeRange(@Param("startTime") String startTime, @Param("endTime") String endTime,@Param("member_Code") String member_Code);
}
