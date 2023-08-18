package com.demo.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AdminLogin")
public class AdminLoginBean {


	@Id
	@GeneratedValue
	int adminid;
	@Column(length = 25, unique = true)
	String emailid;
	@Column(length = 10)
	String password;
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public AdminLoginBean(int adminid, String emailid, String password) {
		this.adminid = adminid;
		this.emailid = emailid;
		this.password = password;
	}
	public AdminLoginBean() {
	}
	@Override
	public String toString() {
		return "AdminLoginBean [adminid=" + adminid + ", emailid=" + emailid + ", password=" + password + "]";
	}
	
	
}
