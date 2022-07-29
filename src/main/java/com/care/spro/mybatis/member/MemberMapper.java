package com.care.spro.mybatis.member;



import java.util.List;

import com.care.spro.member.dto.MemberDTO;


public interface MemberMapper {

	public MemberDTO getUser(String id) ;
	public List<MemberDTO> getMember();
	public List<MemberDTO> getone();	
}
