package com.demo.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UserProfile")
public class UserProfileBean {

	@Id
	@GeneratedValue
	int userId;
	@Column(length = 20)
	String name;
	@Column(length = 30, unique = true)
	String emailid;
	@Column(length = 10)
	String password;
	@Column(length = 10)
	String cpassword;
	@Column(unique = true)
	String mobile;
	String birthdate;
	@GeneratedValue
	int addressId;
	@Column(length = 20)
	String address;
	@Column(length = 20)
	String city;
	@Column(length = 20)
	String state;
	@Column(length = 20)
	String district;
	@Column(length = 20)
	String taluka;
	@Column(length = 6)
	int pincode;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getTaluka() {
		return taluka;
	}
	public void setTaluka(String taluka) {
		this.taluka = taluka;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public UserProfileBean(int userId, String name, String emailid, String password, String cpassword, String mobile,
			String birthdate, int addressId, String address, String city, String state, String district, String taluka,
			int pincode) {
		this.userId = userId;
		this.name = name;
		this.emailid = emailid;
		this.password = password;
		this.cpassword = cpassword;
		this.mobile = mobile;
		this.birthdate = birthdate;
		this.addressId = addressId;
		this.address = address;
		this.city = city;
		this.state = state;
		this.district = district;
		this.taluka = taluka;
		this.pincode = pincode;
	}
	public UserProfileBean(String name, String emailid, String password, String cpassword, String mobile,
			String birthdate, int addressId, String address, String city, String state, String district, String taluka,
			int pincode) {
		this.name = name;
		this.emailid = emailid;
		this.password = password;
		this.cpassword = cpassword;
		this.mobile = mobile;
		this.birthdate = birthdate;
		this.addressId = addressId;
		this.address = address;
		this.city = city;
		this.state = state;
		this.district = district;
		this.taluka = taluka;
		this.pincode = pincode;
	}
	public UserProfileBean(String name, String emailid, String password, String cpassword, String mobile,
			String birthdate, String address, String city, String state, String district, String taluka, int pincode) {
		this.name = name;
		this.emailid = emailid;
		this.password = password;
		this.cpassword = cpassword;
		this.mobile = mobile;
		this.birthdate = birthdate;
		this.address = address;
		this.city = city;
		this.state = state;
		this.district = district;
		this.taluka = taluka;
		this.pincode = pincode;
	}
	
	public UserProfileBean(String name, String emailid, String password, String cpassword, String mobile,
			String birthdate) {
		this.name = name;
		this.emailid = emailid;
		this.password = password;
		this.cpassword = cpassword;
		this.mobile = mobile;
		this.birthdate = birthdate;
	}
	
	public UserProfileBean(int userId, String name, String emailid, String password, String cpassword, String mobile,
			String birthdate, String address, String city, String state, String district, String taluka, int pincode) {
		this.userId = userId;
		this.name = name;
		this.emailid = emailid;
		this.password = password;
		this.cpassword = cpassword;
		this.mobile = mobile;
		this.birthdate = birthdate;
		this.address = address;
		this.city = city;
		this.state = state;
		this.district = district;
		this.taluka = taluka;
		this.pincode = pincode;
	}
	public UserProfileBean() {
	}
	@Override
	public String toString() {
		return "UserProfileBean [userId=" + userId + ", name=" + name + ", emailid=" + emailid + ", password="
				+ password + ", cpassword=" + cpassword + ", mobile=" + mobile + ", birthdate=" + birthdate
				+ ", addressId=" + addressId + ", address=" + address + ", city=" + city + ", state=" + state
				+ ", district=" + district + ", taluka=" + taluka + ", pincode=" + pincode + "]";
	}
	
	
}
