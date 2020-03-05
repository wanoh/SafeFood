package com.safe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.dao.IMember;
import com.safe.service.FoodListService;
import com.safe.service.MemberService;
import com.safe.vo.Member;
import com.safe.vo.Eat;
import com.safe.vo.FoodInfo;
import com.safe.vo.Mall;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	FoodListService fservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}

	@PostMapping(value = "/dologin.member")
	public String checkLogin(Mall mall, HttpServletResponse response,String type, String id, String pass, HttpSession session, HttpServletResponse res) {
		//쿠기생성
		
    
        
		boolean find = service.checkLogin(id, pass);
		System.out.println(find);
		if (find == true) {
			res.setContentType("text/html; charset=UTF-8");
			System.out.println("id:::" + id);
			type = service.checktype(id);
			PrintWriter out = null;
			try {
				out = res.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			out.println("<script> alert('로그인에 성공했습니다.'); </script>");
			session.setAttribute("id", id);
			session.setAttribute("type", type);
			System.out.println(type);

			out.flush();
			
			/*
			 * Cookie genderCookie = new Cookie("gender", mall.getGender());
			 * 
			 * if(mall.isCookieDel()) { genderCookie.setMaxAge(0); mall.setGender(null); }
			 * else { genderCookie.setMaxAge(60*60*24*30); }
			 * System.out.println(genderCookie.getValue());
			 * System.out.println(genderCookie.getName()); response.addCookie(genderCookie);
			 */
	        
			return "main";
		} else {
			res.setContentType("text/html; charset=UTF-8");

			PrintWriter out = null;
			try {
				out = res.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			out.println("<script>alert('로그인에 실패했습니다.'); location.href='login.food';</script>");

			out.flush();
			return "main";
		}
	}

	@RequestMapping(value = "/login.food")
	public String Login() {

		return "login";
	}

	@RequestMapping(value = "/logout.food")
	public String logout(HttpSession session, String id) {
		session.setAttribute("id", null);
		return "redirect:/list.food";
	}

	@RequestMapping(value = "/reg.food")
	public String reg() {
		return "signUp";
	}

	@RequestMapping(value = "/insert.food")
	public String doreg(HttpSession session, String id, String pass, String name, String email, String[] d, String[] t,String age) {
		String str = "";
		String type = "";
		if (d != null) {
			for (int i = 0; i < d.length; i++) {
				str += d[i] + ",";
			}
		}
		for (int i = 0; i < t.length; i++) {
			type = t[i];
		}
		Member m = new Member(id, pass, name, email, str, type,age);
		try {
			service.insert(m);
		}catch(Exception e) {
			e.printStackTrace();
			String msg = "아이디가 중복되었습니다";
			session.setAttribute("msg",msg);
			return "Error";
		}
		return "redirect:/list.food";

	}

	@RequestMapping(value = "/findMember.food")
	public String findbyEmail(String email) {

		return "findmember";

	}

	@RequestMapping(value = "/dofindMember.food")
	public String dofindbyEmail(String email, Model model) {

		Member member = service.findbyEmail(email);
		model.addAttribute("member", member);
		return "showIDPW";

	}

	@RequestMapping(value = "/myPage.food")
	public String mypage(HttpSession session,Model model) {
		String id = (String) session.getAttribute("id");
		String email = service.selectEmail(id);
		List<Eat> eatlist= service.listEat(id);
		for(int i=0; i<eatlist.size(); i++) {
			Eat eat=service.findname(eatlist.get(i).getCode());
			eatlist.get(i).setName(eat.getName());
			eatlist.get(i).setMaker(eat.getMaker());
			eatlist.get(i).setCalory(eat.getCalory()*Integer.parseInt(eatlist.get(i).getN()));
			eatlist.get(i).setImg(eat.getImg());
		}
		
		int total_calory = 0;
		for(int i=0;i<eatlist.size();i++) {
			total_calory += eatlist.get(i).getCalory();
		}
		int result = total_calory / 4;
		
		model.addAttribute("total_calory",total_calory);
		model.addAttribute("result",result);
		
		session.setAttribute("email", email);
		model.addAttribute("eatlist", eatlist);
		return "myPage";
	}

	@RequestMapping(value = "/managerPage.food")
	public String manager(HttpSession session,Model model) {
		
		int totalAge=1;
		int totalCount=1;
		
		String id = (String) session.getAttribute("id");
		String email = service.selectEmail(id);
		
		System.out.println(id);
		List<FoodInfo> list = service.getPlsit(id);
		
		for(int i=0; i<list.size(); i++) {
			totalAge+=list.get(i).getAverage();
			totalCount+=list.get(i).getCount();
		}
		System.out.println("!!"+totalAge);
		System.out.println(totalCount);
		model.addAttribute("list", list);
		int ans=totalAge/totalCount;
		model.addAttribute("aver", ans);
		
		session.setAttribute("email", email);
		return "managerPage";
	}

	@RequestMapping(value = "/update.food")
	public String update(HttpSession session, String pass, String name, String[] d) {
		String allergy = "";
		String msg = "";
		for (int i = 0; i < d.length; i++) {
			allergy += d[i] + ",";
		}
		String id = (String) session.getAttribute("id");
		String email = (String) session.getAttribute("email");
		if (service.updateInfo(id, pass, name, email, allergy)) {
			msg = "정보 변경 완료!";
			session.setAttribute("msg", msg);
			return "actionSuccess";
		} else {
			msg = "정보 변경 실패하였습니다!";
			session.setAttribute("msg", msg);
			return "Error";
		}
	}

	@RequestMapping(value = "/delete.food")
	public String delete(String id, HttpSession session) {
		String msg = "";
		if (service.delete(id)) {
			msg = "정보 삭제 완료!";
			session.setAttribute("msg", msg);
			return "actionSuccess";
		} else {
			msg = "정보 삭제 실패하였습니다!";
			session.setAttribute("msg", msg);
			return "Error";
		}
	}
	@RequestMapping(value = "/resetEat.food")
	public String resetEat(String id, HttpSession session) {
	
		service.resetEat(id);
		
		return "redirect:/myPage.food";
	}

//	@RequestMapping(value="")
//	public String insert(Member m) {
//		service.insert(m);
//	}

}
