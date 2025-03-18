package com.dao;

import com.entity.XinliyishengxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XinliyishengxinxiVO;
import com.entity.view.XinliyishengxinxiView;


/**
 * 心理医生信息
 * 
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
public interface XinliyishengxinxiDao extends BaseMapper<XinliyishengxinxiEntity> {
	
	List<XinliyishengxinxiVO> selectListVO(@Param("ew") Wrapper<XinliyishengxinxiEntity> wrapper);
	
	XinliyishengxinxiVO selectVO(@Param("ew") Wrapper<XinliyishengxinxiEntity> wrapper);
	
	List<XinliyishengxinxiView> selectListView(@Param("ew") Wrapper<XinliyishengxinxiEntity> wrapper);

	List<XinliyishengxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<XinliyishengxinxiEntity> wrapper);
	
	XinliyishengxinxiView selectView(@Param("ew") Wrapper<XinliyishengxinxiEntity> wrapper);
	
}
