package com.entity.view;

import com.entity.YuyuezixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预约咨询
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
@TableName("yuyuezixun")
public class YuyuezixunView  extends YuyuezixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YuyuezixunView(){
	}
 
 	public YuyuezixunView(YuyuezixunEntity yuyuezixunEntity){
 	try {
			BeanUtils.copyProperties(this, yuyuezixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
