package com.jsp.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.Criteria;
import com.jsp.command.PageMaker;
import com.jsp.dao.PdsDAO;
import com.jsp.dto.BoardVO;
import com.jsp.dto.PdsVO;

public class PdsServiceImpl implements PdsService{
	

	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	private PdsDAO pdsDAO;
	public void setPdsDAO(PdsDAO pdsDAO) {
		this.pdsDAO = pdsDAO;
	}
	

	@Override
	public Map<String, Object> getList(Criteria cri) throws SQLException {		
		SqlSession session = sqlSessionFactory.openSession();		
				
		try {
			List<PdsVO> pdsList = pdsDAO.selectPdsCriteria(session, cri);
							
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(pdsDAO.selectPdsCriteriaTotalCount(session, cri));

			Map<String, Object> dataMap = new HashMap<String, Object>();
			dataMap.put("pdsList", pdsList);
			dataMap.put("pageMaker", pageMaker);

			return dataMap;
		} finally {
			session.close();
		}
	}

	@Override
	public PdsVO getPds(int pno) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			PdsVO pds = pdsDAO.selectPdsByPno(session, pno);
			
			return pds;
		} finally {
			session.close();
		}
	}

	@Override
	public void regist(PdsVO pds) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			int pno = pdsDAO.selectPdsSeqNext(session);
			pds.setPno(pno);
			pdsDAO.insertPds(session, pds);		
			
		} finally {
			session.close();
		}
	}

	@Override
	public void modify(PdsVO pds) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			pdsDAO.updatePds(session, pds);		

		} finally {
			session.close();
		}
	}

	@Override
	public void remove(int pno) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			
			pdsDAO.deletePds(session, pno);
			
		} finally {
			session.close();
		}
	}

	@Override
	public PdsVO read(int pno) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			PdsVO pds = pdsDAO.selectPdsByPno(session, pno);
			pdsDAO.increaseViewCnt(session, pno);
			
			return pds;
		} finally {
			session.close();
		}
	}
	



}
