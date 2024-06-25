package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KechngEntity;
import java.util.Map;

/**
 * 课程 服务类
 * @author 
 * @since 2021-04-15
 */
public interface KechngService extends IService<KechngEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);
}