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
 * 心理医生信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-22 13:44:39
 */
@TableName("xinliyishengxinxi")
public class XinliyishengxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XinliyishengxinxiEntity() {
		
	}
	
	public XinliyishengxinxiEntity(T t) {
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
	 * 头像
	 */
					
	private String touxiang;
	
	/**
	 * 从业时间
	 */
					
	private String congyeshijian;
	
	/**
	 * 擅长领域
	 */
					
	private String shanzhanglingyu;
	
	/**
	 * 个人简介
	 */
					
	private String gerenjianjie;
	
	
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
	 * 设置：头像
	 */
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
	/**
	 * 设置：从业时间
	 */
	public void setCongyeshijian(String congyeshijian) {
		this.congyeshijian = congyeshijian;
	}
	/**
	 * 获取：从业时间
	 */
	public String getCongyeshijian() {
		return congyeshijian;
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
	 * 设置：个人简介
	 */
	public void setGerenjianjie(String gerenjianjie) {
		this.gerenjianjie = gerenjianjie;
	}
	/**
	 * 获取：个人简介
	 */
	public String getGerenjianjie() {
		return gerenjianjie;
	}

}
