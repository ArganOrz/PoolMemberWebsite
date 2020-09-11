package com.lldw.service;

import com.lldw.pojo.VConsume;

import java.sql.SQLException;
import java.util.List;

public interface ConsumeService {
    List<VConsume> queryConsumesOfMemberByPhone(String phone);

    List<VConsume> queryConsumesOfMemberByTimeRange(String startTime, String endTime, String member_Code);
}
