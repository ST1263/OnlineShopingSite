package com.demo.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import com.demo.bean.ProductBean;
import com.demo.bean.UserProfileBean;

public class ProductImpl implements ProductDao{

	
	
	
	Session s;
	public ProductImpl() {
		// TODO Auto-generated constructor stub
		Configuration cfg = new Configuration();
		cfg.configure().addAnnotatedClass(ProductBean.class);
		SessionFactory sf = cfg.buildSessionFactory();
		s = sf.openSession();
	}
	@Override
	public void addProduct(ProductBean productBean) {
		// TODO Auto-generated method stub
		Transaction t = s.beginTransaction();
		s.save(productBean);
		t.commit();
		
	}
	@Override
	public List<ProductBean> getUsers() {
		// TODO Auto-generated method stub
		Query q = s.createQuery("From ProductBean");
		List<ProductBean> l = q.list();
		System.out.println(l);
		return l;
	}
	@Override
	public List<ProductBean> getnewProducts() {
		// TODO Auto-generated method stub
		//Session session = null;
       // try {
          //  s.getSessionFactory().openSession();
            Criteria criteria = s.createCriteria(ProductBean.class);
            // Add ordering by product ID in descending order to get the latest products first
            criteria.addOrder(Order.desc("id"));
            // Limit the result to 5 records
            criteria.setMaxResults(5);
            return criteria.list();
      //  } /*finally {
           // if (s != null) {
              //  s.close();
           // }*/
        //}
	}

}
