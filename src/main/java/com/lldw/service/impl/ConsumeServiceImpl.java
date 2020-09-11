package com.lldw.service.impl;

import com.lldw.dao.ConsumeMapper;
import com.lldw.pojo.VConsume;
import com.lldw.service.ConsumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Service("consumeService")
public class ConsumeServiceImpl implements ConsumeService {

    @Autowired
    ConsumeMapper consumeMapper;


    @Override
    public List<VConsume> queryConsumesOfMemberByPhone(String phone) {
        return consumeMapper.queryConsumesOfMemberByPhone(phone);
    }

    @Override
    public List<VConsume> queryConsumesOfMemberByTimeRange(String startTime, String endTime, String phone) {
        return consumeMapper.queryConsumesOfMemberByTimeRange(startTime, endTime, phone );
    }

}
