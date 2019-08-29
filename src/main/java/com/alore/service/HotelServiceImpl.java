package com.alore.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.alore.dao.HotelDAO;
import com.alore.model.Hotel;
import com.alore.model.HotelRatings;

public class HotelServiceImpl implements HotelService{
	
	@Autowired
	private HotelDAO hotelDao;
	
	@Transactional
	public boolean addHotel(Hotel hotel) {
		// TODO Auto-generated method stub
		return hotelDao.addHotel(hotel);
	}
	
	@Transactional
	public boolean deleteHotel(int hotelId) {
		// TODO Auto-generated method stub
		return hotelDao.deleteHotel(hotelId);
	}

	@Transactional
	public boolean updateHotel(Hotel hotel) {
		// TODO Auto-generated method stub
		return hotelDao.updateHotel(hotel);
	}
	
	@Transactional
	public List<Hotel> getHotelByCity(String city, Date date, int rooms) {
		// TODO Auto-generated method stub
		return hotelDao.getHotelByCity(city, date, rooms);
	}

	@Transactional
	public List<Hotel> getHotelByFilter(Hotel hotel) {
		// TODO Auto-generated method stub
		return hotelDao.getHotelByFilter(hotel);
	}

	@Transactional
	public boolean addRating(HotelRatings hotelRating) {
		// TODO Auto-generated method stub
		return hotelDao.addRating(hotelRating);
	}
}
