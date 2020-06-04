package com.student.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.student.entity.SanPham;

@Repository
public class SanPhamDAOImp implements SanPhamDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<SanPham> getDSSanPham() {
		Session session=sessionFactory.getCurrentSession();
		Query<SanPham> listSanPhamQuery=session.createQuery("from SanPham",SanPham.class);
		
		return listSanPhamQuery.getResultList();
	}

	@Override
	public List<SanPham> getDSSanPhamTheoDanhMuc(int maDM) {
		Session session=sessionFactory.getCurrentSession();
		Query<SanPham> listSanPhamQuery=session.createQuery("from SanPham as sp where sp.theLoai.id=:maDM ",SanPham.class);
		listSanPhamQuery.setParameter("maDM", maDM);
		
		return listSanPhamQuery.getResultList();
	}

	@Override
	public List<SanPham> getDSSanPhamTimKiem(String ten) {
		Session session=sessionFactory.getCurrentSession();
		Query<SanPham> listSanPhamQuery=session.createQuery("from SanPham as sp where sp.tenSanPham like concat('%',:tensp,'%') ",SanPham.class);
		listSanPhamQuery.setParameter("tensp", ten);
		
		return listSanPhamQuery.getResultList();
	}

	@Override
	public SanPham getChiTietSP(int id) {
		Session session=sessionFactory.getCurrentSession();
		SanPham sanPham=session.get(SanPham.class, id);
		return sanPham;
	}

	@Override
	public void saveSanPham(SanPham sanPham) {
		Session session=sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(sanPham);
	}

	@Override
	public void deleteSanPham(int id) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(getChiTietSP(id));
		
	}
	
	
	

}
