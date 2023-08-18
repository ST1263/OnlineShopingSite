package com.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.demo.bean.TransactionBean;

import 	org.hibernate.Transaction;

public class TransactionDaoImpl implements TransactionDao{

	Session s;
	   
	   public TransactionDaoImpl() {
		   Configuration cfg = new Configuration();
			cfg.configure().addAnnotatedClass(TransactionBean.class);
			SessionFactory sf = cfg.buildSessionFactory();
			s = sf.openSession();
	    }



	@Override
	public void saveTransaction(TransactionBean transaction) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		s.save(transaction);
		t.commit();
	}

	

}
