/*
 create table users(
  id varchar2(30),
  password varchar2(30),
  name varchar2(20),
  role varchar2(30)
 );
 
 insert into users values ('admin' , '1234', '홍길동', 'Admin');
 commit;
 
 */

package com.spring.springboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

@Repository // 추가 수정 부분
public class UserDAO {
	// JDBC관련 변수
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	//SQL 명령어
	private final String USER_SEARCH = "select * from users where id=? and password=?";
	//로그인 인증
	public UserVO login(UserVO userVO) {
		UserVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_SEARCH);
			stmt.setString(1, userVO.getId());
			stmt.setString(2, userVO.getPassword());
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				vo = new UserVO();
				vo.setId(rs.getString("ID"));
				vo.setName(rs.getString("NAME"));
				vo.setRole(rs.getString("ROLE"));
				System.out.println("role="+ vo.getRole());
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.closeResource(rs, stmt, conn);
		}
		return vo;
	}
}
