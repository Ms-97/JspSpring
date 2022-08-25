package com.jsp.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.BoardModifyCommand;
import com.jsp.controller.HttpRequestParameterAdapter;
import com.jsp.dto.BoardVO;
import com.jsp.service.BoardService;

public class BoardModifyAction implements Action {
	

	private BoardService boardService;
	public void setNoticeService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/board/detail.do?bno="+request.getParameter("bno");
		
		BoardModifyCommand boardCMD 
			= HttpRequestParameterAdapter.execute(request, BoardModifyCommand.class);
		
		BoardVO board = boardCMD.toBoardVO();
		
		boardService.modify(board);
		
		return url;
	}

}









