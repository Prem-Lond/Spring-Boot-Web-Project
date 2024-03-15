package com.premzjbk.JAVA.BY.KIRAN.FIRST.PROJECT.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.catalina.connector.Response;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.premzjbk.JAVA.BY.KIRAN.FIRST.PROJECT.Model.Contact;
import com.premzjbk.JAVA.BY.KIRAN.FIRST.PROJECT.Model.User;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaUpdate;

@Controller
public class LogReg {

	@Autowired
	SessionFactory sf;

	@RequestMapping("userLoginRegister")
	public String userLogin() {
		return "LoginRegister";
	}

	@RequestMapping(path = "login", method = RequestMethod.POST)
	public String login(User user, Model model) throws Exception {

		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		User check = session.get(User.class, user.getEmail());

		if (check != null) {
			if (user.getPassword().equals(check.getPassword())) {
				return "home";
			} else {
				model.addAttribute("msg1", "username and password didn't match!!!");
				return "LoginRegister";
			}
		} else {
			model.addAttribute("msg1", "username and password didn't match!!!");
			return "LoginRegister";
		}

	}
	@RequestMapping(path = "register", method = RequestMethod.POST)
	public String register(User user, Model model) {

		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		User check = session.get(User.class, user.getEmail());

		if (check == null) {

			if (user.getPassword().length() >= 8) {
				session.save(user);
				transaction.commit();
				model.addAttribute("msg2", "Successfully Registration");
			} else {
				model.addAttribute("msg2", "Password Should be greate than or equal 8 digit");
			}

		} else {
			model.addAttribute("msg2", "You have allready registered");
			return "LoginRegister";
		}

	 
		return "LoginRegister";

	}

	@RequestMapping("contactus")
	public String contactUs(@ModelAttribute Contact contact) {
                     
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(contact);
		transaction.commit();

		return "contact";

	}
}
