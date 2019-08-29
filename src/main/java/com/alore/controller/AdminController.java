package com.alore.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alore.model.Hotel;
import com.alore.model.HotelRatings;
import com.alore.service.HotelService;

@Controller
@RequestMapping("/admin")
public class AdminController {
		
		private HotelService hotelService;
	
		@RequestMapping(value="/page",method=RequestMethod.GET)
		public String adminPage()
		{
		return "admin";
		}
	
	// method to return addhotel.jsp file means addhotelpage
		@RequestMapping(value="/addhotel",method=RequestMethod.GET)
		public String addHotelPage()
		{
			return "addhotel";
		}
		
		// method will return updatehotel.jsp page
		@RequestMapping(value="/updatehotel",method=RequestMethod.GET)
		public String updateHotelPage()
		{
			return "updatehotel";
		}
		
		//method will return deletehotel.jsp page
		@RequestMapping(value = "/deletehotel",method = RequestMethod.GET)
		public String deleteHotelPage()
		{
			return "deletehotel";
		}
		
		// method will return //filterhotels.jsp page
		@RequestMapping(value="/filterhotelspage",method=RequestMethod.GET)
		public String filterHotelPage()
		{
			return "filterhotels";
		}
	
		@RequestMapping(value= "/addHotel", method = RequestMethod.POST)
		public ModelAndView addHotel(@ModelAttribute("addHotel") Hotel hotel){
		boolean result=hotelService.addHotel(hotel);
		if(result)
			return new ModelAndView("home");
		else
			return new ModelAndView("addhotel");
		} 
	
		//mtehod will return /updatehotel.jsp page
		@RequestMapping(value= "/updateHotel", method = RequestMethod.POST)
		public ModelAndView updateHotel(@ModelAttribute("updatehotel") Hotel hotel){
		boolean result=hotelService.updateHotel(hotel);
		if(result)
			return new ModelAndView("home");
		else
			return new ModelAndView("updatehotel");
		}
	
		//method will delete hotel from database 
		@RequestMapping(value="/deleteHotel/{hotelId}")
		public ModelAndView deleteHotel(@PathVariable("hotelId") int hotelId) {
		boolean result=hotelService.deleteHotel(hotelId);
		if(result)
			return new ModelAndView("home");
		else
			return new ModelAndView("deletehotel");
		}
	
		//methods to display hotels based on clients requirements
		@RequestMapping(value="/gethotels",method=RequestMethod.GET)
		public ModelAndView  getHotelsByCity(@RequestParam(value="place",required=true)String name,
			@RequestParam(value="date",required=true)Date date,
			@RequestParam(value="roomsrequired",required=true)String room,HttpServletResponse resp ) throws IOException{

			int rooms=Integer.parseInt(room);
			List<Hotel> list=hotelService.getHotelByCity(name,date,rooms);
			PrintWriter printWriter=null;
	
			if(list!=null)
			{
				return new ModelAndView("gethotelsbycity","list",list);
			}
			else
			{
				printWriter=resp.getWriter();
				printWriter.print("<h1>No Hotels found</h1>");
				return null;
			}
		}
	
		// methods to filter based o their requirements
		@RequestMapping(value="/filter",method=RequestMethod.GET)
		public ModelAndView  getHotelByFilter(@ModelAttribute Hotel hotel,HttpServletResponse resp) {
			List<Hotel> list=hotelService.getHotelByFilter(hotel);
			PrintWriter out;
			try {
				out = resp.getWriter();
				if(list!=null)
				{
					out.print("<h1> Hotel Details are: </h1>");
					for (Hotel hotels : list) {
						out.print("<h3> Hotel Name: " + hotels.getHotelname() + "</h3>");
						out.print("<h3> Hotel Image: " + hotels.getHotelImage() + "</h3>");
						out.print("<h3> Wifi: " + hotels.getWifi() + "</h3>");
						out.print("<h3> A/C: " + hotels.getAc() + "</h3>");
						out.print("<h3> Resturant: " + hotels.getRestaurant() + "</h3>");
						out.print("<h3> Description: " + hotels.getHotelDescription() + "</h3>");
						out.print("<h3> Place: " + hotels.getHotelPlace()+ "</h3>");
					}
				}
				else
					out.print("<h1> No Hotels found </h1>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
		}
		
		// method to add comments and ratings into database by end user
		@RequestMapping(value="/addrating",method=RequestMethod.POST)
		public ModelAndView  addRatings(@ModelAttribute HotelRatings hotelRating,HttpServletResponse resp) {
			boolean result=hotelService.addRating(hotelRating);
			PrintWriter printWriter=null;
			if(result)
				return new ModelAndView("successrating");
			else
			{
				try {
					printWriter=resp.getWriter();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				printWriter.print("<h1>Not Added</h1>");
				return null;
			}
		}
	
}
