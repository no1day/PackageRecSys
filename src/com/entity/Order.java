package com.entity;

import java.util.Date;

public class Order {
	
    private Integer oid;
	
	private String username;
	
	private Integer oprice;
	
	private Integer cid;
	
	private String telephone;
	
	private Date time;
	
	public Integer getoid() {
		return oid;
	}
	
	public void setoid(Integer oid) {
		this.oid = oid;
	}
	
	public String getusername() {
		return username;
	}
	
	public void setusername(String username) {
		this.username = username;
	}
	
	public Integer getcid() {
		return cid;
	}
	
	public void setcid(Integer cid) {
		this.cid = cid;
	}
	
	public Integer getoprice() {
		return oprice;
	}
	
	public void setoprice(Integer oprice) {
		this.oprice = oprice;
	}
	
	public String gettelephone() {
		return telephone;
	}
	
	public void settelephone(String telephone) {
		this.telephone = telephone;
	}
	
	private Date gettime() {
		return time;
	}
	
	private void settime(Date time) {
		this.time = time;
	}
}
