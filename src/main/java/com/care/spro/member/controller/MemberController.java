package com.care.spro.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.spro.common.SessionName;
import com.care.spro.member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController implements SessionName {
	@Autowired MemberService ms;
	

@GetMapping("/login")
	public String login() {
	return"member/login";
}
@PostMapping("/user_check")
public String user_check(HttpServletRequest req,RedirectAttributes rs) {
	int result=ms.user_check(req);
	if(result==0) {
		rs.addAttribute("id",req.getParameter("id"));
		return"redirect:successLogin";
	}
	return"redirect:login";
}

@GetMapping("successLogin")
public String successLogin(String id,HttpSession session) {
	session.setAttribute(LOGIN, id);
	System.out.println("id:"+id);
	return "member/successLogin";
}
@GetMapping("logout")
public String logout(HttpSession session) {
	
	session.invalidate();
	return "redirect:/index";
}
@GetMapping("memberInfo")
public String memberInfo(Model model) {
	ms.getMember(model);
	return"member/memberInfo";
}
@GetMapping("info")
public String info(String id,Model model) {
	ms.info(id,model);
	return"member/info";
}
}
