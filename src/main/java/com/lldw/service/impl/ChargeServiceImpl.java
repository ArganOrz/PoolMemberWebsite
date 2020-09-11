package com.lldw.service.impl;

import com.lldw.dao.ChargeMapper;
import com.lldw.pojo.Charge;
import com.lldw.pojo.VConsume;
import com.lldw.service.ChargeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChargeServiceImpl implements ChargeService {

    @Autowired
    ChargeMapper chargeMapper;

    @Override
    public List<Charge> queryChargesOfMemberByMemberCode(String member_Code) {
        return chargeMapper.queryChargesOfMemberByMemberCode(member_Code);
    }

    @Override
    public List<Charge> queryChargesOfMemberByTimeRange(String startTime, String endTime, String member_Code) {
        return chargeMapper.queryConsumesOfMemberByTimeRange(startTime, endTime, member_Code);
    }
}
