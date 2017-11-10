package com.oaec.entity;

import java.io.Serializable;

/**
 * 会员的地址
 * 
 */
public class Address implements Serializable {
	private static final long serialVersionUID = 529932754573978762L;
	
	/*编号*/
	private Integer id;
	/* '收货人' */
	private String contact;
	/* '联系电话' */
	private String mobile;
	/* '详细地址' */
	private String street;
	/* '邮编' */
	private String zipcode;
	/* '所属会员' */
	private Integer mbr_id;
	/* '是否为所属会员的默认收货地址' */
	private boolean default_value;
	
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getContact() {
		return contact;
	}
	
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getStreet() {
		return street;
	}
	
	public void setStreet(String street) {
		this.street = street;
	}
	
	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	public Integer getMbr_id() {
		return mbr_id;
	}
	
	public void setMbr_id(Integer mbr_id) {
		this.mbr_id = mbr_id;
	}
	
	public boolean getDefault_value() {
		return default_value;
	}
	
	public void setDefault_value(boolean default_value) {
		this.default_value = default_value;
	}
	
	@Override
	public String toString() {
		return "Address [id=" + id + ", contact=" + contact + ", mobile="
				+ mobile + ", street=" + street + ", zipcode=" + zipcode
				+ ", mbr_id=" + mbr_id + ", default_value=" + default_value
				+ "]";
	}
}
