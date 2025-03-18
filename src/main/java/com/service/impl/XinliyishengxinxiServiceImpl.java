package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XinliyishengxinxiDao;
import com.entity.XinliyishengxinxiEntity;
import com.service.XinliyishengxinxiService;
import com.entity.vo.XinliyishengxinxiVO;
import com.entity.view.XinliyishengxinxiView;

@Service("xinliyishengxinxiService")
public class XinliyishengxinxiServiceImpl extends ServiceImpl<XinliyishengxinxiDao, XinliyishengxinxiEntity> implements XinliyishengxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XinliyishengxinxiEntity> page = this.selectPage(
                new Query<XinliyishengxinxiEntity>(params).getPage(),
                new EntityWrapper<XinliyishengxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XinliyishengxinxiEntity> wrapper) {
		  Page<XinliyishengxinxiView> page =new Query<XinliyishengxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XinliyishengxinxiVO> selectListVO(Wrapper<XinliyishengxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XinliyishengxinxiVO selectVO(Wrapper<XinliyishengxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XinliyishengxinxiView> selectListView(Wrapper<XinliyishengxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XinliyishengxinxiView selectView(Wrapper<XinliyishengxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
