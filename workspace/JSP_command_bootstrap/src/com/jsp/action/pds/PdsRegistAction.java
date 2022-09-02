package com.jsp.action.pds;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.josephoconnell.html.HTMLInputFilter;
import com.jsp.action.Action;
import com.jsp.controller.MultipartHttpServletRequestParser;
import com.jsp.dto.PdsVO;
import com.jsp.service.PdsService;

public class PdsRegistAction implements Action {

	private PdsService pdsService;

	public void setPdsService(PdsService pdsService) {
		this.pdsService = pdsService;
	}

	// 업로드 파일 환경 설정
	final private int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	final private int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	final private int MAX_REQUEST_SIZE = 1024 * 1024 * 200; // 200MB

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/pds/regist_success";
		
		MultipartHttpServletRequestParser multi 
			= new  MultipartHttpServletRequestParser(request, MEMORY_THRESHOLD, 
														      MAX_FILE_SIZE,
														      MAX_REQUEST_SIZE);
		

		// VO 생성
		PdsVO pds = new PdsVO();		
		pds.setContent(multi.getParameter("content"));
		pds.setWriter(multi.getParameter("writer"));
		
		//XSS처리
		String title  = HTMLInputFilter.htmlSpecialChars(multi.getParameter("title"));
		pds.setTitle(title);
		
		//DB처리
		try {
			pdsService.regist(pds);
		}catch(SQLException e) {
			e.printStackTrace();
			throw e;
		}
		
		return url;
	}

}






