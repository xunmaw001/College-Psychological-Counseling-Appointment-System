package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XinliyishengxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XinliyishengxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XinliyishengxinxiView;


/**
 * 心理医生信息
 *
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
public interface XinliyishengxinxiService extends IService<XinliyishengxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XinliyishengxinxiVO> selectListVO(Wrapper<XinliyishengxinxiEntity> wrapper);
   	
   	XinliyishengxinxiVO selectVO(@Param("ew") Wrapper<XinliyishengxinxiEntity> wrapper);
   	
   	List<XinliyishengxinxiView> selectListView(Wrapper<XinliyishengxinxiEntity> wrapper);
   	
   	XinliyishengxinxiView selectView(@Param("ew") Wrapper<XinliyishengxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XinliyishengxinxiEntity> wrapper);
   	
}

