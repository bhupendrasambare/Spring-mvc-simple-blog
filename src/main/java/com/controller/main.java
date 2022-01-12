package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import database.dao.blogDao;
import database.dao.userDao;
import database.model.blog;
import database.model.user;

@Controller
public class main {

	@Autowired
	userDao dao;
	
	@Autowired
	blogDao blogDao;
	
	@RequestMapping(value={"/","/index"})
	public String index(Model m) {
		List<blog> blog = blogDao.getAllBlog();
		user user = dao.getUser(1);
		
		m.addAttribute("user", user);
		m.addAttribute("blog", blog);
		return "index";
	}

	@RequestMapping(value={"/author"})
	public String author(Model m) {
		List<blog> blog = blogDao.getAllBlog();
		user user = dao.getUser(1);
		m.addAttribute("user", user);
		m.addAttribute("blog", blog);
		return "author";
	}

	@RequestMapping(value={"/post"}, method=RequestMethod.GET)
	public String post( @RequestParam("id") int id,Model m) {
		blog blog = blogDao.getBlogById(id);
		user user = dao.getUser(1);
		m.addAttribute("blog",blog);
		m.addAttribute("user", user);
		return "post";
	}
}
