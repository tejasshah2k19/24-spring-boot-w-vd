package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;
import com.dao.UserDao;

import jakarta.validation.Valid;

@Controller
public class SessionController {

	@Autowired
	UserDao userDao;

	@GetMapping("signup")
	public String signup(Model model) {
		model.addAttribute("user", new UserBean());// no data no error
		return "Signup";
	}

	@PostMapping("saveuser")
	public String saveUser(@ModelAttribute("user") @Valid UserBean user, BindingResult result, Model model) {

		model.addAttribute("user", user);// data + error

		if (result.hasErrors() == true) {
			return "Signup";
		} else {
			userDao.addUser(user);
			return "Home";
		}
	}
}
