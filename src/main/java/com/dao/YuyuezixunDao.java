package com.dao;

import com.entity.YuyuezixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuyuezixunVO;
import com.entity.view.YuyuezixunView;


/**
 * 预约咨询
 * 
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
public interface YuyuezixunDao extends BaseMapper<YuyuezixunEntity> {
	
	List<YuyuezixunVO> selectListVO(@Param("ew") Wrapper<YuyuezixunEntity> wrapper);
	
	YuyuezixunVO selectVO(@Param("ew") Wrapper<YuyuezixunEntity> wrapper);
	
	List<YuyuezixunView> selectListView(@Param("ew") Wrapper<YuyuezixunEntity> wrapper);

	List<YuyuezixunView> selectListView(Pagination page,@Param("ew") Wrapper<YuyuezixunEntity> wrapper);
	
	YuyuezixunView selectView(@Param("ew") Wrapper<YuyuezixunEntity> wrapper);
	
}
