package com.oaec.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

//商品
public class Product implements Serializable {
	private static final long serialVersionUID = -379231982515404860L;
	//编号 
	private Integer id; 
	//商品名称
	private String name;
	/* '所属类目'cate_id */
	private Integer cate_id;
	/* '主配图片' */
	private String thumbnail; 
	/* '库存数量' */
	private int inventory; 
	 /* '售出数量' */
	private int sales_volume;
	/* '定价' */
	private BigDecimal price; 
	/* '售价' */
	private BigDecimal sale_price; 
	/* '详情富文本描述' */
	private String detail_description; 
	/* '卖点富文本描述' */
	private String selling_description; 
	/* '添加时间' */
	private Date create_time; 
	/* '开售时间' */
	private Date sale_time;
	
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
	

	public String getThumbnail() {
		return thumbnail;
	}
	
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getInventory() {
		return inventory;
	}
	
	
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	
	
	public int getSales_volume() {
		return sales_volume;
	}
	
	
	public void setSales_volume(int sales_volume) {
		this.sales_volume = sales_volume;
	}
	
	
	public BigDecimal getPrice() {
		return price;
	}
	

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public BigDecimal getSale_price() {
		return sale_price;
	}
	
	public void setSale_price(BigDecimal sale_price) {
		this.sale_price = sale_price;
	}

	public String getDetail_description() {
		return detail_description;
	}

	public void setDetail_description(String detail_description) {
		this.detail_description = detail_description;
	}

	public String getSelling_description() {
		return selling_description;
	}

	public void setSelling_description(String selling_description) {
		this.selling_description = selling_description;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Date getSale_time() {
		return sale_time;
	}
	
	public void setSale_time(Date sale_time) {
		this.sale_time = sale_time;
	}
	
	public Integer getCate_id() {
		return cate_id;
	}

	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", cate_id=" + cate_id
				+ ", thumbnail=" + thumbnail + ", inventory=" + inventory
				+ ", sales_volume=" + sales_volume + ", price=" + price
				+ ", sale_price=" + sale_price + ", detail_description="
				+ detail_description + ", selling_description="
				+ selling_description + ", create_time=" + create_time
				+ ", sale_time=" + sale_time + "]";
	} 
	
}
