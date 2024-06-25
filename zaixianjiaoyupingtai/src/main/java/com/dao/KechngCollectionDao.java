package com.dao;

import com.entity.KechngCollectionEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.KechngCollectionView;

/**
 * 课程收藏 Dao 接口
 *
 * @author 
 * @since 2021-04-15
 */
public interface KechngCollectionDao extends BaseMapper<KechngCollectionEntity> {

   List<KechngCollectionView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
