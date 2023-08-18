package com.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.demo.bean.AdminLoginBean;

public class AdminLoginImpl  implements AdminLoginDao{

	Session s;
	public AdminLoginImpl() {
		// TODO Auto-generated constructor stub
		Configuration cfg = new Configuration();
		cfg.configure().addAnnotatedClass(AdminLoginBean.class);
		SessionFactory sf = cfg.buildSessionFactory();
		s = sf.openSession();
		
	}


	@Override
	public void saveAdmin(AdminLoginBean adminLoginBean) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		s.save(adminLoginBean);
		t.commit();
	}


	@Override
	public boolean validate(String emailid, String password) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		AdminLoginBean ulb = null;
        ulb = (AdminLoginBean) s.createQuery("FROM AdminLoginBean WHERE emailid = :emailid").setParameter("emailid", emailid)
            .uniqueResult();

        if (ulb != null && ulb.getPassword().equals(password)) {
            return true;
        }
        t.commit();
        return false;
	}

	

}
