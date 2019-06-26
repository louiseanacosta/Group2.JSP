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


import model.Package;

@Path("package")

public class PackageRestService {
	
		@GET
		@Path("/getpackage/{packageId}")
		@Produces(MediaType.APPLICATION_JSON)
		public String getpackage(@PathParam("packageId") int packageId)
		{
			//http://localhost:8080/Group2JSP/rest/package/getpackage/1
			EntityManager em =
					Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
			Query query = em.createQuery("SELECT p FROM Package p where p.packageId ="+ packageId);
			Package package1 = (Package) query.getSingleResult();
			Gson gson = new Gson();
			Type type = new TypeToken<Package>(){}.getType();
			String jsonString = gson.toJson(package1, type);
			em.close();
			return jsonString;
		}
		
		@GET
		@Path("/getallpackages")
		@Produces(MediaType.APPLICATION_JSON)
		public String getAllPackages()
		{
			//http://localhost:8080/Group2JSP/rest/package/getAllPackages
			EntityManager em =
					Persistence.createEntityManagerFactory("Group2JSP").createEntityManager();
			Query query = em.createQuery("SELECT p FROM Package p");
			List<Package> packages = query.getResultList();
			Gson gson = new Gson();
			Type type = new TypeToken<List<Package>>(){}.getType();
			String jsonString = gson.toJson(packages, type);
			em.close();
			return jsonString;
		}
		
		
}
		
		
		