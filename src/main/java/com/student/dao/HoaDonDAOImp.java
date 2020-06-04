package com.student.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.student.entity.ChiTietHoaDon;
import com.student.entity.HoaDon;

@Repository
public class HoaDonDAOImp implements HoaDonDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public void saveHoaDon(HoaDon hoaDon) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(hoaDon);

	}


	@Override
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(chiTietHoaDon);
	}
	
	

}
