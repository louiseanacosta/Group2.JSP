
package main;

import java.lang.reflect.Type;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;


import model.Country;
import model.Provstate;

@Path("/country")                             //Step 1 import javax.ws.rs.Path
public class CountryProvRestService {
	//url: http://localhost:8080/Group2JSP/rest/country/getallCountries
	@GET                                     //Step 2 @GET @POST @PUT @DELETE
	@Path("/getallCountries")                   //Step 3 Give it a path to GET
	@Produces(MediaType.APPLICATION_JSON)    //Step 4 specify the type to be Application_JSON with ws.rs. send back 
	public String getAllCountries()             //Step 5 create a function
	{
		EntityManager em 
		= Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();//5.1 Persistence -> createentity MAnageerFator with persistence Unit Name
		
		Query query = em.createQuery("SELECT c FROM Country c"); //5.2 createQuery(arg0) single arg Use jsql
		
		List<Country> agents = query.getResultList();     //5.3 create list of agents
		Gson gson = new Gson();                         //5.4 create a gson object 
		Type type = new TypeToken<List<Country>>() {}.getType();   //7.5import lang reflect Type tell the type to gson getType from object class bring back object of that class
	    String jsonString = gson.toJson(agents, type);    //5.6 create the json string gson .toJson src + type                                                     // Type is interface need a method to replace 
	    em.close();
	    return jsonString;   // client need to convert this to array
	}
	

	@GET
	@Path("/getProvState/{country}")                   //Step 6 copy from @path to blow Give it a path to GET
	@Produces(MediaType.APPLICATION_JSON)    
	public String getProState(@PathParam("country") String country) //Step 7 change the name link the path agentid to method import PathParam
	{
		
		//url: http://localhost:8080/Group2JSP/rest/country/getProState/CA
		EntityManager em 
		= Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();//7.1 Persistence -> createentity MAnageerFator with persistence Unit Name
		//way 1 to find agent
//		Agent agend =
//		em.find(Agent.class, agentId);  //find the (class,object)
		//end of way 1
		
		//way2 to find agent
		Query query = em.createQuery("SELECT p FROM Provstate p where p.countrycode='"+country+"'"); //7.2 createQuery(arg0) single arg Use jsql go to agent class in model to find the agentid
		
		List<Provstate> provstate = (List<Provstate>) query.getResultList();     //7.3 create one agents using getsingleresult cast agent
		//end of way 2
		
		
		Gson gson = new Gson();                         //7.4 create a gson object 
		Type type = new TypeToken<List<Provstate>>() {}.getType();   //7.5import lang reflect Type tell the type to gson getType from object class bring back object of that class
	    String jsonString = gson.toJson(provstate, type);    //7.6 create the json string gson .toJson src + type                                                     // Type is interface need a method to replace 
	    em.close();
	    return jsonString;   // client need to convert this to array
	} 
	
	
	
}
	