/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.martin.base.app;

import com.martin.base.controllers.IndexController;
import com.martin.base.controllers.PersonasController;
import java.util.HashSet;
import java.util.Set;
import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

/**
 *
 * @author martin
 */
@ApplicationPath("")
public class App extends Application{
    
    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> s = new HashSet<Class<?>>();
        s.add(IndexController.class);
        s.add(PersonasController.class);
        return s;
    }
    
}
