package com.student.config;



import java.beans.PropertyVetoException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Properties;
import java.util.logging.Logger;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.fasterxml.jackson.databind.SerializationFeature;
import com.mchange.v2.c3p0.ComboPooledDataSource;



@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = "com.student")
@PropertySource("classpath:persistence-sqlserver.properties")
public class DemoAppConfig implements WebMvcConfigurer {
	
	//tiêm thuộc tính trong file persistence-mysql.properties vào (env)
	@Autowired
	private Environment env;
	
	
	private Logger mylogger=Logger.getLogger(getClass().getName());
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
		
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
	}
	
	
	
	
	@Bean
	public DataSource myDataSource() {
		//Tạo đối tượng kết nối
		ComboPooledDataSource myDataSource=new ComboPooledDataSource();
		
		
		//cài đặt driver thuộc sql nào
		try {
			myDataSource.setDriverClass(env.getProperty("jdbc.driver"));
		} catch (PropertyVetoException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		
		mylogger.info(">>>>>>Jdbc:URL:::"+env.getProperty("jdbc.url"));
		mylogger.info(">>>>>>Jdbc:user:::"+env.getProperty("jdbc.user"));
		mylogger.info(">>>>>>Jdbc:password:::"+env.getProperty("jdbc.password"));
		
		//cài đặt thuộc tính kết nối
		myDataSource.setJdbcUrl(env.getProperty("jdbc.url"));
//		myDataSource.setUser(env.getProperty("jdbc.user"));
//		myDataSource.setPassword(env.getProperty("jdbc.password"));
		
		
		//Cài đặt số kết nối ....
		myDataSource.setInitialPoolSize(Integer.parseInt(env.getProperty("connection.pool.initialPoolSize")));
		myDataSource.setMinPoolSize(Integer.parseInt(env.getProperty("connection.pool.minPoolSize")));
		myDataSource.setMaxPoolSize(Integer.parseInt(env.getProperty("connection.pool.maxPoolSize")));
		myDataSource.setMaxIdleTime(Integer.parseInt(env.getProperty("connection.pool.maxIdleTime")));
		
		
		return myDataSource;
	}
	
	
	private Properties getHibernateProperties() {

		// set hibernate properties
		Properties props = new Properties();

		props.setProperty("hibernate.dialect", env.getProperty("hibernate.dialect"));
		props.setProperty("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
		
		return props;				
	}
	
	@Bean
	public LocalSessionFactoryBean sessionFactory(){
		
		// create session factorys
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		
		// set the properties
		sessionFactory.setDataSource(myDataSource());
		sessionFactory.setPackagesToScan(env.getProperty("hibernate.packagesToScan"));
		sessionFactory.setHibernateProperties(getHibernateProperties());
		
		return sessionFactory;
	}
	
	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		
		// setup transaction manager based on session factory
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(sessionFactory);

		return txManager;
	}	


	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		 registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}


	 @Override
	    public void configureMessageConverters(
	        List<HttpMessageConverter<?>> converters) {
	        Jackson2ObjectMapperBuilder builder = new Jackson2ObjectMapperBuilder();
	        builder.dateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm"));
	        builder.featuresToDisable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
	        converters.add(new MappingJackson2HttpMessageConverter(builder.build()));
	    }

	
	
	
	
}
