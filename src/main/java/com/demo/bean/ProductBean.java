package com.demo.bean;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "ProductInfo")
public class ProductBean {
	
	@Id
    @GeneratedValue
    int id;

	@Column(length = 20)
	String pname;
	String pprice;
	@Column(length = 20)
	String pcolor;
	@Column(length = 20)
	String pram;
	@Column(length = 20)
	String pstorage;
	String imageUrl;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getPram() {
		return pram;
	}
	public void setPram(String pram) {
		this.pram = pram;
	}
	public String getPstorage() {
		return pstorage;
	}
	public void setPstorage(String pstorage) {
		this.pstorage = pstorage;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public ProductBean(int id, String pname, String pprice, String pcolor, String pram, String pstorage,
			String imageUrl) {
		this.id = id;
		this.pname = pname;
		this.pprice = pprice;
		this.pcolor = pcolor;
		this.pram = pram;
		this.pstorage = pstorage;
		this.imageUrl = imageUrl;
	}
	public ProductBean() {
	}
	public ProductBean(String pname, String pprice, String pcolor, String pram, String pstorage, String imageUrl) {
		this.pname = pname;
		this.pprice = pprice;
		this.pcolor = pcolor;
		this.pram = pram;
		this.pstorage = pstorage;
		this.imageUrl = imageUrl;
	}
	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", pname=" + pname + ", pprice=" + pprice + ", pcolor=" + pcolor + ", pram="
				+ pram + ", pstorage=" + pstorage + ", imageUrl=" + imageUrl + "]";
	}
	
	
}
