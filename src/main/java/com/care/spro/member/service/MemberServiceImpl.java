package com.care.spro.member.service;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.spro.member.dto.MemberDTO;
import com.care.spro.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper mapper;
	public int user_check(HttpServletRequest req) {
		MemberDTO dto= mapper.getUser(req.getParameter("id"));
		if(dto!=null) {
			if(dto.getPw().equals(req.getParameter("pw"))){
				
				return 0;
			}
		}
		return 1;
	}
	
	public void getMember(Model model) {
		model.addAttribute("list",mapper.getMember());
	}
	
	public void info(String id,Model model) {
		model.addAttribute("list",mapper.getone());
	}


}