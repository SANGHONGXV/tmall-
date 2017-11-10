package com.oaec.entity;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 订单项
 * 
 */
public class Item implements Serializable {
	private static final long serialVersionUID = -5513015465167003750L;
	private Integer id;
	private Integer order_id;/* '所属订单编号', */
	private Integer product_id;/* '所购商品编号', */
	private int amount;/* '单品数量', */
	private BigDecimal total_price;/* '单品总价', */
	private BigDecimal payment_price;/* '单品实付的总价' */
	
	private Product product;/* '所购商品' */
	
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	public Integer getProduct_id() {
		return product_id;
	}
	
	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public BigDecimal getTotal_price() {
		return total_price;
	}
	
	public void setTotal_price(BigDecimal total_price) {
		this.total_price = total_price;
	}

	public BigDecimal getPayment_price() {
		return payment_price;
	}
	
	public void setPayment_price(BigDecimal payment_price) {
		this.payment_price = payment_price;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String toString() {
		return "Item [id=" + id + ", order_id=" + order_id + ", product_id="
				+ product_id + ", amount=" + amount + ", total_price="
				+ total_price + ", payment_price=" + payment_price
				+ ", product=" + product + "]";
	}
}
