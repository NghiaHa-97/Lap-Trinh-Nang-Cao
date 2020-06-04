package com.student.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.student.entity.TheLoai;

@Repository
public class TheLoaiDAOImp implements TheLoaiDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public List<TheLoai> dsTheLoai() {
		Session session=sessionFactory.getCurrentSession();
		Query<TheLoai> dsTheLoai=session.createQuery("from TheLoai",TheLoai.class);
		
		return dsTheLoai.getResultList();
	}
	
}
