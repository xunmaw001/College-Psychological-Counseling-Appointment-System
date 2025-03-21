package com.entity.view;

import com.entity.XueshengpingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学生评价
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
@TableName("xueshengpingjia")
public class XueshengpingjiaView  extends XueshengpingjiaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XueshengpingjiaView(){
	}
 
 	public XueshengpingjiaView(XueshengpingjiaEntity xueshengpingjiaEntity){
 	try {
			BeanUtils.copyProperties(this, xueshengpingjiaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
