/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.martin.base.controllers;

import com.martin.base.models.Personas;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;
import org.javalite.activejdbc.Base;

/**
 *
 * @author martin
 */
@Path("personas")
public class PersonasController {
    
    @Context
    HttpServletRequest request;
    
    @Context
    HttpServletResponse response;

    @GET
    @Path("/index")
    @Produces(MediaType.TEXT_HTML)
    public Response index(){
        Base.open("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/alq", "root", "chacho77");
        List<Personas> personas = Personas.findAll();
        Map<String, Object> map = new HashMap<>();
        map.put("personas",personas);        
        Base.close();
        return Response.ok(new Viewable("/views/personas/index.jsp",personas)).build();
    }
    
    @GET
    @Path("/show/{id}")
    @Produces(MediaType.TEXT_HTML)
    public Response show(@QueryParam("id") String id){
        Base.open("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/alq", "root", "chacho77");
        Personas persona = Personas.findFirst("id = ?", id);        
        Map<String, Object> map = new HashMap<>();
        map.put("persona",persona);        
        Base.close();
        return Response.ok(new Viewable("/views/personas/show.jsp", map)).build();
    }
    
    @GET
    @Path("/new")
    @Produces(MediaType.TEXT_HTML)
    public Response add(){
        return Response.ok(new Viewable("/views/personas/add.jsp")).build();
    }
    
    @GET
    @Path("/edit/{id}")
    @Produces(MediaType.TEXT_HTML)
    public Response edit(@QueryParam("id") String id){
        Base.open("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/alq", "root", "chacho77");
        Personas persona = Personas.findFirst("id = ?", id);        
        Map<String, Object> map = new HashMap<>();
        map.put("persona",persona); 
        Base.close();
        return Response.ok(new Viewable("/views/personas/edit.jsp", map)).build();
    }
    
    @PUT
    @Path("/update/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response update(@QueryParam("id") String id){
        Base.open("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/alq", "root", "chacho77");
        Personas persona = Personas.findFirst("id = ?", id);        
        persona.set("apellido","Gonzalez");
        persona.saveIt();
        Base.close();
        return Response.ok(new Viewable("/views/personas/index.jsp")).build();
    }
    
    @DELETE
    @Path("/destroy/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response destroy(@QueryParam("id") String id){
        Base.open("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/alq", "root", "chacho77");
        Personas persona = Personas.findFirst("id = ?", id);        
        persona.delete();
        Base.close();
        return Response.ok(new Viewable("/views/personas/index.jsp")).build();
    }
    
    @POST
    @Path("/create")
    @Produces(MediaType.APPLICATION_JSON)
    public Response create(){
        Personas persona = new Personas();
        persona.set("dni", 31343209);
        persona.set("apellido", "Moreno");
        persona.set("nombre", "Felipe");
        persona.saveIt();
        return Response.ok(new Viewable("/views/personas/index.jsp")).build();
    }
    
}
