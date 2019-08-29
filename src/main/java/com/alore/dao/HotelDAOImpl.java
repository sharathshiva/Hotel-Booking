package com.alore.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

import com.alore.database.JPAUtils;
import com.alore.model.Hotel;
import com.alore.model.HotelRatings;

@Repository
public class HotelDAOImpl implements HotelDAO {
	
	EntityManagerFactory emf=JPAUtils.getEntityManagerFactory();
	
	EntityManager em=emf.createEntityManager();
	
	EntityTransaction transaction=em.getTransaction();

	public boolean addHotel(Hotel hotel) {
		boolean status = false;
		em.getTransaction().begin();
		try {
			em.persist(hotel);
			em.getTransaction().commit();
			status=true;
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		emf.close();
		return status;
	}

	public boolean updateHotel(Hotel hotel) {
		boolean status = false;
		em.getTransaction().begin();
		try {
			String hql="update Hotel hotel set hotel.hotelName=:hotelName,hotel.hotelPlace=:hotelPlace,hotel.hotelImage=:hotelImage,hotel.hotelDescription=:hotelDescription,hotel.wifi=:wifi,hotel.ac=:ac,hotel.restaurant=:restaurant";	
			Query query=em.createQuery(hql);
			query.setParameter("hotelName",hotel.getHotelname());
			query.setParameter("hotelPlace",hotel.getHotelPlace());
			query.setParameter("hotelImage",hotel.getHotelImage());
			query.setParameter("hotelDescription",hotel.getHotelDescription());
			query.setParameter("wifi",hotel.getWifi());
			query.setParameter("ac",hotel.getAc());
			query.setParameter("restaurant",hotel.getRestaurant());
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		emf.close();
		return status;
	}

	public boolean deleteHotel(int hotelId) {
		boolean status=false;
		em.getTransaction().begin();
		Hotel hotel=null;
		try {
			hotel=em.find(Hotel.class, hotelId);
			em.remove(hotel);
			status=true;
			
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		em.close();
		return status;
	}

	@Override
	public List<Hotel> getHotelByCity(String city,Date date,int rooms) {
		// TODO Auto-generated method stub
		List<Hotel> hotelist=null;
		transaction.begin();
		String hql="select hotels from Hotel hotels where hotels.hotelName=:hotelName";
		Query query=em.createQuery(hql);
		query.setParameter("hotelName", city);
		try {
			hotelist=query.getResultList();
			if(hotelist!=null) {
					return hotelist;
			}
		}catch(Exception e) {
			transaction.rollback();
		}
		em.close();
		return hotelist;
	}

	

	@SuppressWarnings("unchecked")
	@Override
	public List<Hotel> getHotelByFilter(Hotel hotel) {
		List<Hotel> hotelsList=null;
		transaction.begin();
		String hql="SELECT hotels FROM Hotel hotels where hotels.hotelName=:hotelName and hotels.hotelImage=:hotelImage and hotels.hotelPlace=:hotelPlace and hotel.hotelDescription=:hotelDescription "
				+ "hotels.wifi=:wifi and hotels.restaurant=:restaurant and hotels.ac=:ac ";
		Query query=em.createQuery(hql);
		query.setParameter("hotelName",hotel.getHotelname());
		query.setParameter("hotelImage",hotel.getHotelImage());
		query.setParameter("hotelPlace",hotel.getHotelPlace());
		query.setParameter("hotelDescription",hotel.getHotelDescription());
		query.setParameter("wifi",hotel.getWifi());
		query.setParameter("ac",hotel.getAc());
		query.setParameter("restaurant",hotel.getRestaurant());

		try {
			hotelsList = query.getResultList();
			if(hotelsList!=null)
			{
						transaction.commit();
						return hotelsList;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
		em.close();
		return hotelsList;
	}

	@Override
	public boolean addRating(HotelRatings hotelRating) {
		boolean status=false;
		transaction.begin();
		try
		{
			em.persist(hotelRating);
			em.getTransaction().commit();
			status= true;
		}catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		}
		em.close();
		return status;
	}
	

}
