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

import model.Agent;

@Path("/agents")
public class AgentRestService {

	@GET
	@Path("/getallagents")
	@Produces(MediaType.APPLICATION_JSON)
	public String getAllAgents()
	{
		//	http://localhost:8080/JSPDay7/rest/agents/getallagents
		EntityManager em =
				Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
		Query query = em.createQuery("select a from Agent a");
		List<Agent> agents = query.getResultList();
		Gson gson = new Gson();
		Type type = new TypeToken<List<Agent>>() {}.getType();
		String jsonString = gson.toJson(agents, type);
		em.close();
		return jsonString;
	}
	
	@GET
	@Path("/getagent/{ agentid }")
	@Produces(MediaType.APPLICATION_JSON)
	public String getAgent(@PathParam("agentid") int agentId)
	{
		//	http://localhost:8080/JSPDay7/rest/agents/getagent/5
		EntityManager em =
				Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();

		Agent agent = em.find(Agent.class, agentId);
		
		//Query query = em.createQuery("select a from Agent a where a.agentId=" + agentId);
		//Agent agent = (Agent) query.getSingleResult();

		Gson gson = new Gson();
		Type type = new TypeToken<Agent>() {}.getType();
		String jsonString = gson.toJson(agent, type);
		em.close();
		return jsonString;

	}
	
	@POST
	@Path("/postagent")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces(MediaType.TEXT_PLAIN)
	public String postAgent(String jsonString)
	{
		Gson gson = new Gson();
		Type type = new TypeToken<Agent>() {}.getType();
		Agent agent = gson.fromJson(jsonString, type);
		EntityManager em =
				Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
		
		em.getTransaction().begin();
		em.merge(agent);
		em.getTransaction().commit();
		return "Agent update completed";
	}
	
	@PUT
	@Path("/putagent")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces(MediaType.TEXT_PLAIN)
	public String putAgent(String jsonString)
	{
		Gson gson = new Gson();
		Type type = new TypeToken<Agent>() {}.getType();
		Agent agent = gson.fromJson(jsonString, type);
		EntityManager em =
				Persistence.createEntityManagerFactory("JSPDay7").createEntityManager();
		
		em.getTransaction().begin();
		em.persist(agent);
		em.getTransaction().commit();
		return "Agent insert completed";
	}
	
	@DELETE
	@Path("/deleteagent/{ agentid }")
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteAgent(@PathParam("agentid") int agentId)
	{
		EntityManager em =
				Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
		
		Agent agent = em.find(Agent.class, agentId);
		em.getTransaction().begin();
		em.remove(agent);
		em.getTransaction().commit();
		return "Agent deleted";
	}
}
