package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XinliyishengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XinliyishengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XinliyishengView;


/**
 * 心理医生
 *
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
public interface XinliyishengService extends IService<XinliyishengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XinliyishengVO> selectListVO(Wrapper<XinliyishengEntity> wrapper);
   	
   	XinliyishengVO selectVO(@Param("ew") Wrapper<XinliyishengEntity> wrapper);
   	
   	List<XinliyishengView> selectListView(Wrapper<XinliyishengEntity> wrapper);
   	
   	XinliyishengView selectView(@Param("ew") Wrapper<XinliyishengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XinliyishengEntity> wrapper);
   	
}

