package com.oaec.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 类别
 *
 */
public class Category implements Serializable {
	private static final long serialVersionUID = -3350763396111688050L;
	/** 编号 */
	private Integer id;
	/** 类目名称 */
	private String name;
	/** 类目别名 */
	private String alias;
	/** 父类目p_id */
	private Integer p_id;
	/** 排序权重 */
	private int order_weight = 10;
	
	/** 子类目列表 */
	private List<Category> childs = new ArrayList<Category>();


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAlias() {
		return alias;
	}


	public void setAlias(String alias) {
		this.alias = alias;
	}


	public Integer getP_id() {
		return p_id;
	}

	
	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}

	
	public int getOrder_weight() {
		return order_weight;
	}

	public void setOrder_weight(int order_weight) {
		this.order_weight = order_weight;
	}

	public List<Category> getChilds() {
		return childs;
	}


	public void setChilds(List<Category> childs) {
		this.childs = childs;
	}

	
	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", alias=" + alias
				+ ", p_id=" + p_id + ", order_weight=" + order_weight
				+ ", childs=" + childs + "]";
	}
}