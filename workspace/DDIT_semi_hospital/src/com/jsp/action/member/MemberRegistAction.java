package com.jsp.action.member;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.MemberRegistCommand;
import com.jsp.controller.HttpRequestParameterAdapter;
import com.jsp.dto.MemberVO;
import com.jsp.service.MemberService;

public class MemberRegistAction implements Action {
	
	private MemberService memberService;
	public void setSearchMemberService(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//화면
		String url="/member/regist_success";
		
		//입력
		try {
			DateFormat df = new SimpleDateFormat("yyyyMMdd");
			request.setCharacterEncoding("utf-8");
			MemberVO member = new MemberVO();
			member.setId(request.getParameter("id"));
			member.setPwd(request.getParameter("pwd"));
			member.setName(request.getParameter("name"));
			member.setBirth(df.parse(request.getParameter("birth")));
			member.setEmail(request.getParameter("email"));
			member.setGender(Integer.parseInt(request.getParameter("gender")));
			member.setPhone(request.getParameter("phone"));
			member.setAddr1(request.getParameter("addr1"));
			member.setAddr2(request.getParameter("addr2"));
			
	
	
			
			//처리
			memberService.regist(member);
		
		}catch(Exception e) {
			e.printStackTrace();
			//exception 처리.....
			url="/member/regist_fail";
			request.setAttribute("msg", "현재 회원가입이 불가합니다. 관리자에게 문의하세요.");
		}
		return url;
	}

}




