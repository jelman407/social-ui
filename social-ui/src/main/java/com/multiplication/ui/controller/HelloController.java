package com.multiplication.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {
	@RequestMapping("/")
	public String index() {
		System.out.println("index()");
		
		return "index";
	}
	
	@RequestMapping("/welcome")
	public String welcome() {
		System.out.println("welcome()");
		
		return "welcome";
	}

	@PostMapping("/hello")
	public String sayHello(@RequestParam("name") String name, Model model) {
		model.addAttribute("name", name);
		return "hello";
	}
}
