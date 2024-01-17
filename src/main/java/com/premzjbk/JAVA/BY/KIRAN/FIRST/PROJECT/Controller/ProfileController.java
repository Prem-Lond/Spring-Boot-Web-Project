package com.premzjbk.JAVA.BY.KIRAN.FIRST.PROJECT.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ProfileController {

	@RequestMapping("homepage")
	public String homepage() {
		return "home";
	}

	@RequestMapping("aboutpage")
	public String aboutpage() {
		return "about";
	}

	@RequestMapping("servicepage")
	public String servicepage() {
		return "service";
	}

	@RequestMapping("contactpage")
	public String contactpage() {
		return "contact";
	}
	@RequestMapping("loginpage")
	public String loginpage() {
		return "LoginRegister";
	}
	
	 
}
