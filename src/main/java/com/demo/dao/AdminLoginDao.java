package com.demo.dao;

import com.demo.bean.AdminLoginBean;

public interface AdminLoginDao {
	boolean validate(String emailid, String password);
    void saveAdmin(AdminLoginBean adminLoginBean);
}
