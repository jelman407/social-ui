package com.multiplication.ui;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class SocialUiApplication {

	public static void main(String[] args) {
		SpringApplication.run(SocialUiApplication.class, args);
	}

}
