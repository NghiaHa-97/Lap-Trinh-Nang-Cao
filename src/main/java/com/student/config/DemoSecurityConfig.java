package com.student.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;



@Configuration
@EnableWebSecurity

public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {
	
	
	@Autowired
	private DataSource myData;
	
	
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(myData)
		.usersByUsernameQuery("select username,password, enabled from users where username=?")
		.authoritiesByUsernameQuery("SELECT username,authority \r\n" + 
				"FROM users,authorities,users_authorities\r\n" + 
				"WHERE dbo.users_authorities.id_users=dbo.users.id AND  dbo.users_authorities.id_authorities=dbo.authorities.id AND  username=? ");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		
		http.authorizeRequests()
			//Bất cứ yêu cầu nào vào ứng dụng đều phải xác thực
			//.anyRequest().authenticated()
			//đường dẫn mà người có chức vụ đc truy cập
			.antMatchers("/home").permitAll()
			.antMatchers("/admin/**").hasRole("ADMIN")
			
			.and()
			.formLogin()
				.loginPage("/showMyLoginForm")
				.loginProcessingUrl("/checkUser")
				.defaultSuccessUrl("/home")
				//Tất cả mọi người có thể truy câp trang này mà không cần đăng nhập
				.permitAll()
			.and()
			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/home")
				.invalidateHttpSession(true)
				.permitAll();
			//.and()
			//.exceptionHandling().accessDeniedPage("/error");
			
	}
	
	
	//Mở đường ddẫn đến html, css, js không cần xác thực
	//(nếu không có trang đăng nhập sẽ không sử dụng đc css)
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}
	
}
