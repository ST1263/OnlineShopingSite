package com.demo.dao;

import java.util.List;

import com.demo.bean.ProductBean;


public interface ProductDao {

	void addProduct(ProductBean productBean);
	public List<ProductBean> getUsers();
	public List<ProductBean> getnewProducts();
}
