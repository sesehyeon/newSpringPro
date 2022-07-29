package com.care.spro.member.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MemberService {
	public int user_check(HttpServletRequest req);
	public void getMember(Model model);
	public void info(String id,Model model);

}
