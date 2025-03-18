package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuyuezixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuyuezixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuyuezixunView;


/**
 * 预约咨询
 *
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
public interface YuyuezixunService extends IService<YuyuezixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuyuezixunVO> selectListVO(Wrapper<YuyuezixunEntity> wrapper);
   	
   	YuyuezixunVO selectVO(@Param("ew") Wrapper<YuyuezixunEntity> wrapper);
   	
   	List<YuyuezixunView> selectListView(Wrapper<YuyuezixunEntity> wrapper);
   	
   	YuyuezixunView selectView(@Param("ew") Wrapper<YuyuezixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuyuezixunEntity> wrapper);
   	
}

