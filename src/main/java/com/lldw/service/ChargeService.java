package com.lldw.service;

import com.lldw.pojo.Charge;
import com.lldw.pojo.VConsume;

import java.util.List;

public interface ChargeService {
    List<Charge> queryChargesOfMemberByMemberCode(String member_Code);

    List<Charge> queryChargesOfMemberByTimeRange(String startTime, String endTime, String member_Code);
}
