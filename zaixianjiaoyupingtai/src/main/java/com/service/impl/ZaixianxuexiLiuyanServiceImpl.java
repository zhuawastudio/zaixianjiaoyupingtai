package com.service.impl;

import com.utils.StringUtil;
import org.springframework.stereotype.Service;
import java.lang.reflect.Field;
import java.util.*;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;

import com.dao.ZaixianxuexiLiuyanDao;
import com.entity.ZaixianxuexiLiuyanEntity;
import com.service.ZaixianxuexiLiuyanService;
import com.entity.view.ZaixianxuexiLiuyanView;

/**
 * 在线学习留言 服务实现类
 * @author 
 * @since 2021-04-15
 */
@Service("zaixianxuexiLiuyanService")
@Transactional
public class ZaixianxuexiLiuyanServiceImpl extends ServiceImpl<ZaixianxuexiLiuyanDao, ZaixianxuexiLiuyanEntity> implements ZaixianxuexiLiuyanService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<ZaixianxuexiLiuyanView> page =new Query<ZaixianxuexiLiuyanView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }


}
