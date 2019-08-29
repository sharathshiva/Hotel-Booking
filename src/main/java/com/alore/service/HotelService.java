package com.alore.service;

import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Service;
import com.alore.model.Hotel;
import com.alore.model.HotelRatings;

@Service
public interface HotelService {
	
	//add the hotel
		public boolean addHotel(Hotel hotel);
		
		//update the hotel
		public boolean updateHotel(Hotel hotel);
		
		//delete the hotel
		public boolean deleteHotel(int hotelId);
		
		//get the hotel by city
		public List<Hotel> getHotelByCity(String city,Date date,int rooms);
		
		//get hotel by searching
		public List<Hotel> getHotelByFilter(Hotel hotel);
		
		//add ratings to hotel
		public boolean addRating(HotelRatings hotelRating);

	
}
