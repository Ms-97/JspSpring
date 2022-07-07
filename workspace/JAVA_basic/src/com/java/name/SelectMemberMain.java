package com.java.name;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.java.dto.MemberVO;

public class SelectMemberMain {
	public static void main(String[] args) {
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
		
		//1. 드라이버로딩
				Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. connention 생성
				Connection conn
					= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","JSP","JSP");
			// 3. statement
				
				String sql = "select * "
						+ " from member"
						+ " where id=?";
				
				
				Statement stmt = conn.createStatement();
			// 4. resultSet
				ResultSet rs = stmt.executeQuery(sql);
			//5. data주입
				List<MemberVO> memberList = new ArrayList<MemberVO>();
				MemberVO member;
				while (rs.next()) {
					member = new MemberVO();
					
					member.setId(rs.getString("id"));
					member.setPwd(rs.getString("pwd"));
					member.setName(rs.getString("name"));
					member.setPhone(rs.getString("phone"));
					member.setEmail(rs.getString("email"));
					member.setAddress(rs.getString("address"));
					member.setPicture(rs.getString("picture"));
					
					member.setRegDate(rs.getDate("regDate"));
					member.setAuthority(rs.getString("authority"));
					member.setEnabled(rs.getInt("enabled"));
					member.setRegister(rs.getString("register"));
					
					memberList.add(member);
				}
				System.out.println(memberList);
			}
			
		
	}
}
