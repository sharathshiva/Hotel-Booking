package com.alore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//this method will automatically create user table in database
@Entity
public class User {
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userId;
	
	@Column(name="FirstName")
	private String firstname;
	
	@Column(name="LastName")
	private String lastname;
	
	@Column(name="email")
	private String email;
	
	@Column(name="Password")
	private String password;
	
	@Column(name="MobileNo")
	private long mobileNo;
	
	@Column(name="City")
	private String city;
	
	@Column(name="State")
	private String state;
	
	@Column(name="Pincode")
	private String pincode;


	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", password=" + password + ", mobileNo=" + mobileNo + ", city=" + city + ", state=" + state
				+ ", pincode=" + pincode + "]";
	}

}
