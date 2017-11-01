/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.martin.base.app;

import com.martin.base.controllers.IndexController;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;
import org.glassfish.jersey.servlet.ServletProperties;

/**
 *
 * @author martin
 */
public class App extends ResourceConfig{

    public App(){
        //Resources
        packages(IndexController.class.getPackage().getName());        
        //MVC
        register(JspMvcFeature.class);
        //Bootstrap y demás contenido estatico
        property(ServletProperties.FILTER_STATIC_CONTENT_REGEX, "/assets/.*");
    }   
    
}
