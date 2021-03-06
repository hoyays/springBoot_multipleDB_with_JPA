package com.jpa.config;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(
		entityManagerFactoryRef = "oracleEntityManagerFactory",
		basePackages = {"com.jpa.repository.oracleDB"},
		transactionManagerRef = "oracleTransactionManager")
public class OracleDBConfig {
	
	@Primary
	@Bean(name = "oracleDataSource")
	@ConfigurationProperties(prefix = "spring.oracle.datasource")
	public DataSource dataSource() {
		return DataSourceBuilder.create().build();
	}
	
	
	@Primary
	@Bean(name = "oracleEntityManagerFactory")
	public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean(
			EntityManagerFactoryBuilder builder,
			@Qualifier("oracleDataSource")DataSource dataSource) {
		
		Map<String, Object> properties = new HashMap<>();
		properties.put("hibernate.hbm2ddl.auto", "none");
		properties.put("hibernate.dialect", "org.hibernate.dialect.Oracle10gDialect");
		
		return builder.dataSource(dataSource)
					  .properties(properties)
					  .packages("com.jpa.entity.oracleDB")
					  .persistenceUnit("OracleBoard")
					  .build();
	}
	
	
	@Primary
	@Bean(name = "oracleTransactionManager")
	public PlatformTransactionManager transactionManager(
			@Qualifier("oracleEntityManagerFactory")EntityManagerFactory entityManagerFactory) {
		return new JpaTransactionManager(entityManagerFactory);
	}
	
	
	

}
