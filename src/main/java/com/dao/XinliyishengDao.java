package com.dao;

import com.entity.XinliyishengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XinliyishengVO;
import com.entity.view.XinliyishengView;


/**
 * 心理医生
 * 
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
public interface XinliyishengDao extends BaseMapper<XinliyishengEntity> {
	
	List<XinliyishengVO> selectListVO(@Param("ew") Wrapper<XinliyishengEntity> wrapper);
	
	XinliyishengVO selectVO(@Param("ew") Wrapper<XinliyishengEntity> wrapper);
	
	List<XinliyishengView> selectListView(@Param("ew") Wrapper<XinliyishengEntity> wrapper);

	List<XinliyishengView> selectListView(Pagination page,@Param("ew") Wrapper<XinliyishengEntity> wrapper);
	
	XinliyishengView selectView(@Param("ew") Wrapper<XinliyishengEntity> wrapper);
	
}
