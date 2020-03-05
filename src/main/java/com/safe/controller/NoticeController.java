package com.safe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.service.NoticeService;
import com.safe.vo.Notice;


@Controller
public class NoticeController {
	@Autowired
	NoticeService service;

	 @ExceptionHandler
	 public ModelAndView handler(Exception e) {
		 ModelAndView mav = new ModelAndView("ErrorHandler");
		 mav.addObject("msg", e.getMessage());
		 return mav;
	 }
	 
	 @GetMapping("/listNotice.food")
	 public String NoticeList(Model model) {
		 List<Notice> list = service.selectAll();
		 model.addAttribute("list", list);
		 return "listNotice";
	 }
	 
	 @GetMapping("/detailNotice.food")
	 public String boardDetail(String num, Model model) {
		 Notice b = new Notice();
		
		 b = service.selectOne(num);
		 System.out.println(b);
		 model.addAttribute("b",b);
		 return "detailNotice";
	 }
	 
	 @GetMapping("/searchNotice.food")
	 public String searchNotice(String no, Model model) {
		 return "searchNotice";
	 }
	 
	 @GetMapping("/insertNoticeForm.food")
	 public String insertNoticeForm(Notice b) {
		 //board 만들어여헙나거?
		 return "insertNoticeForm";
	 }
	 
	 @PostMapping("/insertNotice.food")
	 public String insertNotice(String num, String pass, String name, String wdate, String title, String content, String count) {
		 Notice b = new Notice("0",pass,name,wdate,title,content,"0");
		 System.out.println(b.toString());
		 service.insert(b);
		 return "redirect:listNotice.food";
		// return "board/listBoard";
	 }
	 
	 @RequestMapping("/deleteNotice.food")
	 public String deleteNotice(String num, Model model) {
		 System.out.println(num);
		 service.delete(num);
		 //List<Notice> list = service.selectAll();
		// model.addAttribute("list",list);
		 //return "listNotice";
		 return "redirect:listNotice.food";
		// return "board/listBoard";
	 }
}
