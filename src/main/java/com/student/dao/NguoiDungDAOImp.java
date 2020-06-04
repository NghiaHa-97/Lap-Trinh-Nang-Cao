package com.student.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.student.entity.NguoiDungCT;
import com.student.entity.Users;

@Repository
public class NguoiDungDAOImp implements NguoiDungDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void luuTTNguoiDung(Users user) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);

	}

	@Override
	public NguoiDungCT getChiTietUser(String username) {
		Session session=sessionFactory.getCurrentSession();
		
		Query<NguoiDungCT> query=session.createQuery(" select u.nguoiDungCT from Users as u "+
											" where u.username=:username ",NguoiDungCT.class);
		
		query.setParameter("username", username);
		
		List<NguoiDungCT> users=query.getResultList();
		
		
		return users.get(0);
	}
	

}
