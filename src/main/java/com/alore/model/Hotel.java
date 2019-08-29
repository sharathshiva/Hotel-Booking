package com.alore.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


//this class will automatically create hotel table in database
@Entity(name="Hotel")
public class Hotel {
	
	@Id
	@Column(name="HotelId")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int hotelId;
	
	@Column(name="HotelName")
	private String hotelname;
	
	@Column(name="HotelPlace")
	private String hotelPlace;
	
	@Column(name="HotelImage")
	private String hotelImage;
	
	@Column(name="HotelDescription")
	private String hotelDescription;
	
	@Column(name="Wifi")
	private String wifi;
	
	@Column(name="Restaurant")
	private String restaurant;
	
	@Column(name="AC")
	private String ac;

	@Column(name="NoOfRomms")
	private int noOfRooms;

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelname() {
		return hotelname;
	}

	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}

	public String getHotelPlace() {
		return hotelPlace;
	}

	public void setHotelPlace(String hotelPlace) {
		this.hotelPlace = hotelPlace;
	}

	public String getHotelImage() {
		return hotelImage;
	}

	public void setHotelImage(String hotelImage) {
		this.hotelImage = hotelImage;
	}

	public String getHotelDescription() {
		return hotelDescription;
	}

	public void setHotelDescription(String hotelDescription) {
		this.hotelDescription = hotelDescription;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public String getRestaurant() {
		return restaurant;
	}

	public void setRestaurant(String restaurant) {
		this.restaurant = restaurant;
	}

	public String getAc() {
		return ac;
	}

	public void setAc(String ac) {
		this.ac = ac;
	}

	public int getNoOfRooms() {
		return noOfRooms;
	}

	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}

	@Override
	public String toString() {
		return "Hotel [hotelId=" + hotelId + ", hotelname=" + hotelname + ", hotelPlace=" + hotelPlace + ", hotelImage="
				+ hotelImage + ", hotelDescription=" + hotelDescription + ", wifi=" + wifi + ", restaurant="
				+ restaurant + ", ac=" + ac + ", noOfRooms=" + noOfRooms + "]";
	}
	
	
}
