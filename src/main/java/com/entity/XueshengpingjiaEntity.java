package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 学生评价
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
@TableName("xueshengpingjia")
public class XueshengpingjiaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XueshengpingjiaEntity() {
		
	}
	
	public XueshengpingjiaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 心理医生账号
	 */
					
	private String xinliyishengzhanghao;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：心理医生账号
	 */
	public void setXinliyishengzhanghao(String xinliyishengzhanghao) {
		this.xinliyishengzhanghao = xinliyishengzhanghao;
	}
	/**
	 * 获取：心理医生账号
	 */
	public String getXinliyishengzhanghao() {
		return xinliyishengzhanghao;
	}
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
