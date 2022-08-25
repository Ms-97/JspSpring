package com.jsp.action.board;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.Criteria;
import com.jsp.command.CriteriaCommand;
import com.jsp.controller.HttpRequestParameterAdapter;
import com.jsp.service.BoardService;
import com.jsp.service.BoardService;

public class BoardListAction implements Action {

	private BoardService boardService;
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/board/list";
		
		
		CriteriaCommand criCom 
			= HttpRequestParameterAdapter.execute(request, CriteriaCommand.class);
		
		Criteria cri=criCom.toCriteria();
		
		
		Map<String,Object> dataMap = boardService.getBoardList(cri);
		
		request.setAttribute("dataMap",dataMap);
		
		
		return url;
	}

}







