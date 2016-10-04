package com.whattodo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

// Spring MVC에 대한 Bean 설정
@Configuration
@ComponentScan(basePackages={"com.whattodo.controller"}) //<context:component-scan base-package="com.example.controller"/>
@EnableWebMvc //<mvc:annotation-driven />
public class MvcConfig  extends WebMvcConfigurerAdapter{
	
    @Bean
    public ViewResolver internalResourceViewResolver(){
    	InternalResourceViewResolver resolver = new InternalResourceViewResolver();
    	resolver.setPrefix("/WEB-INF/view/");
    	resolver.setSuffix(".jsp");
    	return resolver;
    }
    /*<bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
	        <!-- Example: a logical view name of 'showMessage' is mapped to '/WEB-INF/jsp/showMessage.jsp' -->
	        <property name="prefix" value="/WEB-INF/view/"/>
	        <property name="suffix" value=".jsp"/>
	</bean>*/

}
