package com.demo.dao;

import java.util.List;

import com.demo.bean.UserProfileBean;

public interface UserProfileDao {
	void addUser(UserProfileBean upb);
	boolean validate(String emailid, String password);
	public List<UserProfileBean> getUsers();
	public UserProfileBean searchbyId(UserProfileBean upb);
	public void updateUser(UserProfileBean ubp);
}
