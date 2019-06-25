package main;

import java.lang.reflect.Type;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import model.Booking;

public class BookingDetailRestService {
	// get booking history of customer
	@GET
	@Path("/getbookingdetail/{bookingid}")
	@Produces(MediaType.APPLICATION_JSON)
	public String getBookingDetail(@PathParam("bookingid") int bookingid)
	{
		//http://localhost:8080/Group2JSP/rest/booking/getbookingdetail/{bookingid}
		EntityManager em =
				Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
		Query query = em.createQuery("SELECT b FROM Bookingdetail b WHERE b.customerid = " + bookingid);
		List<Booking> bookings = query.getResultList();
		Gson gson = new Gson();
		Type type = new TypeToken<List<Booking>>(){}.getType();
		String json = gson.toJson(bookings, type);
		em.close();
		return json;
	}
}
