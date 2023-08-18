package com.demo.bean;

import javax.persistence.*;


@Entity
@Table(name = "BuyTransction")
public class TransactionBean {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

	@Column(length = 20)
    private String productName;

    private String productPrice;

    private String quantity;

    private String totalAmount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}

	public TransactionBean(int id, String productName, String productPrice, String quantity, String totalAmount) {
		this.id = id;
		this.productName = productName;
		this.productPrice = productPrice;
		this.quantity = quantity;
		this.totalAmount = totalAmount;
	}

	public TransactionBean() {
	}

	public TransactionBean(String productName, String productPrice, String quantity, String totalAmount) {
		this.productName = productName;
		this.productPrice = productPrice;
		this.quantity = quantity;
		this.totalAmount = totalAmount;
	}

	@Override
	public String toString() {
		return "Transaction [id=" + id + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", quantity=" + quantity + ", totalAmount=" + totalAmount + "]";
	}
	
    
}
