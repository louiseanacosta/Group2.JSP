package main;

import java.lang.reflect.Type;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import model.Booking;
import model.Customer;
@Path("/booking")
public class BookingRestService {
	// get booking history of customer
	@GET
	@Path("/getbooking/{customerId}")
	@Produces(MediaType.APPLICATION_JSON)
	public String getBookingByCustomer(@PathParam("customerId") int customerId)
	{
		//http://localhost:8080/Group2JSP/rest/booking/getbooking/{customerId}
		EntityManager em =
				Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
		Query query = em.createQuery("SELECT b FROM Booking b WHERE b.customerId ="+customerId);
		List<Booking> bookings = query.getResultList();
		Gson gson = new Gson();
		Type type = new TypeToken<List<Booking>>(){}.getType();
		String json = gson.toJson(bookings, type);
		em.close();
		return json;
	}
	

}
