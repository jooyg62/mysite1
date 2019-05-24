package com.cafe24.mysite.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 		(요청)
 * 		  |
 * 	Encoding Filter
 * 		  |
 * Dispather Servlet
 * 		  |
 * ContextLoadListener (현재 위치)
 * 
 * application.xml -> RootApplicationContext( UserDao,... 비지니스 서비스 작업 )
 * 								| (RootApplicationContext를 참조하고 있다.)
 * spring-servlet.xml -> WebApplicationContext(VR, HM,... 웹 서비스 작업)
 */
@WebListener
public class ContextLoadListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent servletContextEvent)  {
		String contextConfigLocation = servletContextEvent.
		getServletContext().
		getInitParameter("contextConfigLocation");
		
		System.out.println("Container Starts..." + contextConfigLocation);
	}
	
	public void contextDestroyed(ServletContextEvent sce)  { 
	}
	
    public ContextLoadListener() {
    }
	
}
