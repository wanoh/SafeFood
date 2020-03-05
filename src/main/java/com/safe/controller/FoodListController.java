package com.safe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.safe.service.FoodListService;
import com.safe.vo.FoodInfo;

@Controller
public class FoodListController {
	@Autowired
	FoodListService service;

	
	
	@RequestMapping(value = "/mylistadd.food")
	public String mylistadd(HttpSession session, String code, HttpServletResponse res) {
		String id = (String) session.getAttribute("id");
		if (id == null) {
			res.setContentType("text/html; charset=UTF-8");

			PrintWriter out = null;
			try {
				out = res.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			out.println("<script> alert('로그인부터 해주세요!'); </script>");

			out.flush();
			
			return "main";
		} else {
			try {
				service.insert(id, code);
			} catch(Exception e) {
				e.printStackTrace();
				String msg = "이미 추가된 음식입니다!";
				session.setAttribute("msg", msg);
				return "Error";
			}
			return "redirect:/product.food";

		}
	}
	@RequestMapping(value = "/mangerlistadd.food")
	public String mangerlistadd(HttpSession session, String code, HttpServletResponse res) {
		String id = (String) session.getAttribute("id");
		if (id == null) {
			res.setContentType("text/html; charset=UTF-8");

			PrintWriter out = null;
			try {
				out = res.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			out.println("<script> alert('로그인부터 해주세요!'); </script>");

			out.flush();
			
			return "main";
		} else {
			try {
				service.insertml(id, code);
			}catch(Exception e) {
				e.printStackTrace();
				String msg = "이미 추가된 음식입니다!";
				session.setAttribute("msg", msg);
				return "Error";
			}
			return "redirect:/product.food";

		}
	}
	
	@RequestMapping(value="/mylistaddproduct.food")
	public String mylistaddproduct(HttpSession session, String code) {
		String id = (String)session.getAttribute("id");
		service.insert(id, code);
		return "redirect:/detail.food?code="+code;
	}

	@RequestMapping(value = "/mymenu.food")
	public String mymenu(HttpSession session, Model model, HttpServletResponse res) {
		String id = (String) session.getAttribute("id");

		List<FoodInfo> list = service.SelectAll(id);
		model.addAttribute("list", list);

		return "mymenu";
	}
	@RequestMapping(value = "/myproduct.food")
	public String myproduct(HttpSession session, Model model, HttpServletResponse res) {
		String id = (String) session.getAttribute("id");

		List<FoodInfo> list = service.SelectAllp(id);
		model.addAttribute("list", list);

		return "mymenu";
	}

	@RequestMapping(value = "/mylistdelete.food")
	public String mylistdelete(HttpSession session, String code) {
		String id = (String) session.getAttribute("id");
		service.delete(id, code);
		return "redirect:/mymenu.food";
	}
	
	@RequestMapping(value = "/DeleteAddFood.food")
	public String deleteAddfood(HttpSession session, String code) {
		String id = (String) session.getAttribute("id");
		service.deleteaddfood(id, code);
		return "redirect:/myproduct.food";
	}
}
