package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.bean.UserProfileBean;

public class UserProfileImpl implements UserProfileDao{

	Session s;
	public UserProfileImpl() {
		// TODO Auto-generated constructor stub
		Configuration cfg = new Configuration();
		cfg.configure().addAnnotatedClass(UserProfileBean.class);
		SessionFactory sf = cfg.buildSessionFactory();
		s = sf.openSession();
	}
	@Override
	public void addUser(UserProfileBean upb) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		s.save(upb);
		t.commit();
		
	}

	@Override
	public boolean validate(String emailid, String password) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		UserProfileBean ulb = null;
        ulb = (UserProfileBean) s.createQuery("FROM UserProfileBean WHERE emailid = :emailid").setParameter("emailid", emailid)
            .uniqueResult();

        if (ulb != null && ulb.getPassword().equals(password)) {
            return true;
        }
        t.commit();
        return false;
	}

	@Override
	public List<UserProfileBean> getUsers() {
		// TODO Auto-generated method stub
		Query q = s.createQuery("From UserProfileBean");
		List<UserProfileBean> l = q.list();
		System.out.println(l);
		return l;
	}

	@Override
	public UserProfileBean searchbyId(UserProfileBean upb) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		UserProfileBean ud = (UserProfileBean)s.load(UserProfileBean.class, upb.getUserId());
		t.commit();
		return ud;
	}

	@Override
	public void updateUser(UserProfileBean ubp) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		UserProfileBean ud = (UserProfileBean)s.get(UserProfileBean.class, ubp.getUserId());
		ud.setName(ubp.getName());
		ud.setMobile(ubp.getMobile());
		ud.setBirthdate(ubp.getBirthdate());
		ud.setEmailid(ubp.getEmailid());
		ud.setAddress(ubp.getAddress());
		ud.setCity(ubp.getCity());
		ud.setDistrict(ubp.getDistrict());
		ud.setPincode(ubp.getPincode());
		ud.setTaluka(ubp.getTaluka());
		ud.setState(ubp.getState());
		s.update(ud);
		System.out.println("Updated...");
		t.commit();
	}

}
