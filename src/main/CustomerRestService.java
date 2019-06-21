package main;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import model.Agent;
import model.Customer;

import java.lang.reflect.Type;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;

@Path("customer")

public class CustomerRestService {
	@GET
	@Path("/getcustomer/{customerId}")
	@Produces(MediaType.APPLICATION_JSON)
	public String getcustomer(@PathParam("customerId") int customerId)
	{
		//http://localhost:8080/Group2JSP/rest/customer/getcustomer/1
		EntityManager em =
				Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
		Query query = em.createQuery("select c from Customer c where c.customerId ="+customerId);
		Customer customer = (Customer) query.getSingleResult();
		Gson gson = new Gson();
		Type type = new TypeToken<Customer>(){}.getType();
		String jsonString = gson.toJson(customer, type);
		em.close();
		return jsonString;
			
		
	}
	@POST
	@Path("/updatecustomer")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	
	
    public String updatecustomer(String jsonString)
    {   //http://localhost:8080/Group2JSP/rest/customer/updatecustomer
		Gson gson = new Gson();
		Type type = new TypeToken<Customer>() {}.getType();
		Customer customer = gson.fromJson(jsonString, type);
				EntityManager em 
				= Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
				em.getTransaction().begin();// start transaction
				em.merge(customer);			//update the agent
				em.getTransaction().commit();//commit transcation
				
				return "Customer update Complete";
    	
    }
	
	@PUT
	@Path("/insertcustomer")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertcustomer(String jsonString)
	{//http://localhost:8080/Group2JSP/rest/customer/insertcustomer
		System.out.println("DEBUG: "+jsonString);
		Gson gson = new Gson();
		Type type = new TypeToken<Customer>() {}.getType();
		Customer customer = gson.fromJson(jsonString, type);
	//	if (validate())
		{
				EntityManager em 
				= Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
				em.getTransaction().begin();// start transaction
				em.persist(customer);			//update the agent
				em.getTransaction().commit();//commit transcation
				
				return "Customer insert Complete";
		}
	}

}
