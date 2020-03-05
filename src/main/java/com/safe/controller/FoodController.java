package com.safe.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.safe.dao.ISafeFood;
import com.safe.service.FoodListService;
import com.safe.service.FoodService;
import com.safe.service.MemberService;
import com.safe.vo.FoodInfo;
import com.safe.vo.link;
import com.safe.vo.Mall;

@Controller
public class FoodController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Autowired
	FoodService service;

	@Autowired
	MemberService mservice;
	
	@Autowired
	FoodListService fservice;
	@GetMapping(value = "/list.food")
	public String list(Model model) {

		List<FoodInfo> list = service.selectAll();
		for (FoodInfo foodInfo : list) {
			System.out.println(foodInfo.getImg());
		}
		model.addAttribute("list", list);
		return "main";
	}

	@GetMapping(value = "/qna.food")
	public String list( HttpServletResponse response,Mall mall,
			@CookieValue(value="gender", required=false) Cookie genderCookie,
			HttpServletRequest request){
	

				if(genderCookie != null)
				mall.setGender(genderCookie.getValue());
				
				System.out.println(mall.getGender());
		return "qna";
	}
	
	
	@GetMapping(value = "/eat.food")
	public String eat(Model model, String code, String id,String url) {
		service.checkEat(code, id);
		return "redirect:/"+url+".food";
	}

	
	
	@GetMapping(value = "/product.food")
	public String productList(Model model) {

		List<FoodInfo> list = service.selectAll();

		for (FoodInfo foodInfo : list) {
			System.out.println(foodInfo.getImg());
		}

		for (int i = 0; i < list.size(); i++) {

		}
		model.addAttribute("list", list);

		return "product";
	}

	@PostMapping(value = "/search.food")
	public String selecAll2(Model model, String word, String condition) {

		List<FoodInfo> Food = service.selectAll2(condition, word);

		model.addAttribute("list", Food);
		return "product";
	}

	@PostMapping(value = "/AddFood.food")
	public String AddFood(Model model, String file, HttpServletRequest request, HttpSession session)
			throws IOException {

		String path = session.getServletContext().getRealPath("/resources/img");
		System.out.println(path);
		System.out.println(path);
		int maxSize = 3 * 1024 * 1024;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, policy);
		
		FoodInfo food = new FoodInfo(
				0, 
				multi.getParameter("name"), 
				0,
				Double.parseDouble(multi.getParameter("calory")),
				Double.parseDouble(multi.getParameter("carvo")), 
				Double.parseDouble(multi.getParameter("protain")),
				Double.parseDouble(multi.getParameter("fat")), 
				0,
				Double.parseDouble(multi.getParameter("natrium")),
				0,
				0, 
				Double.parseDouble(multi.getParameter("transfat")), 
				multi.getParameter("maker"),
				multi.getParameter("materials"), 
				"img/" + multi.getFilesystemName("file"),
				"", 
				0,
				0
				);
		
		String id = (String) session.getAttribute("id");
		service.insert(food);
		FoodInfo Food = service.findlastinserted();
		service.insertml(id, String.valueOf(Food.getCode()));
		model.addAttribute("f", Food);
		return "detail";
	}

	@GetMapping(value = "/selectOne.food")
	public String selectOne(Model model, String code,HttpSession session) {
		String id=(String)session.getAttribute("id");
		FoodInfo Food = service.selectOne(code,id);

		model.addAttribute("list", Food);
		return "list";
	}

	@GetMapping(value = "/detail.food")
	public String detail(HttpSession session, Model model, String code) {
		String id = (String) session.getAttribute("id");
		String[] allergies = mservice.selectAllergy(id).split(",");
		
		FoodInfo Food = service.selectOne(code,id);
		
		String[] materials = Food.getMaterial().split(",");
		int yes_allergy = 0;
		if(Food.getAllergy().equals("true")) {
			link food=service.getlinkone(code);
			Food.setLink(food.getLink());
		}
		
		label:for(int k=0;k<allergies.length;k++) {
			String allergy = allergies[k];
			for(int i=0;i<materials.length;i++) {
				String material = materials[i];
				if(material.contains(allergy)) {
					yes_allergy++;
					break label;
				}
			}
		}
		
		model.addAttribute("yes_allergy",yes_allergy);
		model.addAttribute("f", Food);
		return "detail";
	}

	@GetMapping(value = "/bestProduct.food")
	public String best(Model model) {

		List<FoodInfo> Food = service.bestPro();
		String mcnt = service.chowcount();
		
		model.addAttribute("mcnt",mcnt);
		model.addAttribute("list", Food);
		return "bestProduct";
	}
	
	@GetMapping(value = "/mbestProduct.food")
	public String mbest(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<FoodInfo> mFood = service.mbestPro(id);
		String mcnt = service.howcount(id);
		
		model.addAttribute("mcnt", mcnt);
		model.addAttribute("mlist", mFood);
		return "mbestProduct";
	}
	
	@GetMapping(value = "/link.food")
	public String link(Model model, String link, int code) {

		service.insertlink(link, String.valueOf(code));
		service.updatefood(String.valueOf(code));

		return "redirect:/myproduct.food";
	}
	
	@GetMapping(value = "/deletelink.food")
	public String deletelink(Model model, int code) {

		service.deletelink( String.valueOf(code));
		service.updatefoodfalse(String.valueOf(code));

		return "redirect:/myproduct.food";
	}

	@GetMapping(value= "/obesity.food")
	public String obesity(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<FoodInfo> list = fservice.SelectAll(id);
		int total_calory = 0;
		for(int i=0;i<list.size();i++) {
			total_calory += list.get(i).getCalory();
		}
		int result = total_calory / 4;
		
		model.addAttribute("total_calory",total_calory);
		model.addAttribute("result",result);
		return "ObesityRate";
	}
	
	/*
	 * @GetMapping(value = "/getlink.food") public String getlink(Model model, int
	 * code) {
	 * 
	 * 
	 * service.updatefood(String.valueOf(code));
	 * 
	 * 
	 * return "myproduct.food"; }
	 */

}
