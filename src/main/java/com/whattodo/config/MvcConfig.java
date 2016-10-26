package com.whattodo.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.fasterxml.jackson.databind.ObjectMapper;

// Spring MVC에 대한 Bean 설정
@Configuration
@ComponentScan(basePackages={"com.whattodo.controller"}) //<context:component-scan base-package="com.example.controller"/>
@EnableWebMvc //<mvc:annotation-driven />
public class MvcConfig  extends WebMvcConfigurerAdapter{
	
    @Bean
    public ViewResolver internalResourceViewResolver(){
    	InternalResourceViewResolver resolver = new InternalResourceViewResolver();
    	resolver.setPrefix("/");
    	resolver.setSuffix(".jsp");
    	return resolver;
    }
    /*<bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
	        <!-- Example: a logical view name of 'showMessage' is mapped to '/WEB-INF/jsp/showMessage.jsp' -->
	        <property name="prefix" value="/WEB-INF/view/"/>
	        <property name="suffix" value=".jsp"/>
	</bean>*/

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/resources/img/");
    	
    	registry.addResourceHandler("/list/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/list/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/list/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/list/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/board/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/board/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/board/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/board/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/join/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/join/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/join/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/join/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/login/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/login/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/login/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/login/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/meeting/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/meeting/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/meeting/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/meeting/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/mypage/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/mypage/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/mypage/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/mypage/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/api/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/api/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/api/img/**").addResourceLocations("/WEB-INF/resources/img/");
    	registry.addResourceHandler("/api/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/api/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/admin/css/**").addResourceLocations("/WEB-INF/resources/css/");
    	registry.addResourceHandler("/admin/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/admin/img/**").addResourceLocations("/WEB-INF/resources/img/");
    	registry.addResourceHandler("/admin/js/**").addResourceLocations("/WEB-INF/resources/js/");
    	registry.addResourceHandler("/admin/fonts/**").addResourceLocations("/WEB-INF/resources/fonts/");
    	
    	registry.addResourceHandler("/api/assets/**").addResourceLocations("/WEB-INF/resources/assets/css");
    	//registry.addResourceHandler("/api/images/**").addResourceLocations("/WEB-INF/resources/images/");
    	registry.addResourceHandler("/api/img/**").addResourceLocations("/WEB-INF/resources/img/");
    	//registry.addResourceHandler("/api/assets/js/**").addResourceLocations("/WEB-INF/resources/assets/js/");
    	//registry.addResourceHandler("/api/assets/fonts/**").addResourceLocations("/WEB-INF/resources/assets/fonts/");
    	
    	super.addResourceHandlers(registry);
    }
    
/*	@Bean
	public MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter() {
	    MappingJackson2HttpMessageConverter messageConverter = new MappingJackson2HttpMessageConverter();

	    ObjectMapper objectMapper = new ObjectMapper();
	    messageConverter.setObjectMapper(objectMapper);
	    return messageConverter;
	}
	
	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
	    converters.add(mappingJackson2HttpMessageConverter());
	    super.configureMessageConverters(converters);
	}*/
    
    
    
    
    
    
}
