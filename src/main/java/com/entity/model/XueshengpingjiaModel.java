package com.entity.model;

import com.entity.XueshengpingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 学生评价
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
public class XueshengpingjiaModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 心理医生姓名
	 */
	
	private String xinliyishengxingming;
		
	/**
	 * 擅长领域
	 */
	
	private String shanzhanglingyu;
		
	/**
	 * 学生评价
	 */
	
	private String xueshengpingjia;
		
	/**
	 * 学生评分
	 */
	
	private String xueshengpingfen;
		
	/**
	 * 学生号
	 */
	
	private String xueshenghao;
		
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
				
	
	/**
	 * 设置：心理医生姓名
	 */
	 
	public void setXinliyishengxingming(String xinliyishengxingming) {
		this.xinliyishengxingming = xinliyishengxingming;
	}
	
	/**
	 * 获取：心理医生姓名
	 */
	public String getXinliyishengxingming() {
		return xinliyishengxingming;
	}
				
	
	/**
	 * 设置：擅长领域
	 */
	 
	public void setShanzhanglingyu(String shanzhanglingyu) {
		this.shanzhanglingyu = shanzhanglingyu;
	}
	
	/**
	 * 获取：擅长领域
	 */
	public String getShanzhanglingyu() {
		return shanzhanglingyu;
	}
				
	
	/**
	 * 设置：学生评价
	 */
	 
	public void setXueshengpingjia(String xueshengpingjia) {
		this.xueshengpingjia = xueshengpingjia;
	}
	
	/**
	 * 获取：学生评价
	 */
	public String getXueshengpingjia() {
		return xueshengpingjia;
	}
				
	
	/**
	 * 设置：学生评分
	 */
	 
	public void setXueshengpingfen(String xueshengpingfen) {
		this.xueshengpingfen = xueshengpingfen;
	}
	
	/**
	 * 获取：学生评分
	 */
	public String getXueshengpingfen() {
		return xueshengpingfen;
	}
				
	
	/**
	 * 设置：学生号
	 */
	 
	public void setXueshenghao(String xueshenghao) {
		this.xueshenghao = xueshenghao;
	}
	
	/**
	 * 获取：学生号
	 */
	public String getXueshenghao() {
		return xueshenghao;
	}
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
			
}
