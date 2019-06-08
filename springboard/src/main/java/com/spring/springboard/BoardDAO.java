package com.spring.springboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String BOARD_INSERT = "insert into sboard(seq, title, writer, content, regdate, number)" + 
			"values ((select nvl(max(seq), 0)+1 from sboard), ?, ?, ?, sysdate, 0)";

	private final String BOARD_UPDATE = "update sboard set title=?, content=? where seq=?";
	
	private final String BOARD_UPDATE2 = "update sboard set cnt = cnt+1 where seq=?";
	
	private final String BOARD_DELETE = "delete from sboard where seq=?";
	
	private final String BOARD_SELECT = "select * from sboard order by seq desc";
	
	private final String BOARD_SEARCH = "select * from sboard where seq=?";
	
	//게시물 등록
	public void addBoard(BoardVO boardVO) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, boardVO.getTitle());
			stmt.setString(2, boardVO.getWriter());
			stmt.setString(3, boardVO.getContent());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeResource(stmt, conn);
		}
	} 
	
	//게시물 수정
	public void updateBoard(BoardVO boardVO) {
		try {
			conn = JDBCUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, boardVO.getTitle());
			stmt.setString(2, boardVO.getContent());
			stmt.setInt(3, boardVO.getSeq());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeResource(stmt, conn);
		}
	}
	
	public void deleteBoard(BoardVO boardVO) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, boardVO.getSeq());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeResource(stmt, conn);
		}
	}
	
	public BoardVO getBoard(BoardVO boardVO) {
		BoardVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE2);
			stmt.setInt(1, boardVO.getSeq());
			stmt.executeUpdate();
			
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_SEARCH);
			stmt.setInt(1, boardVO.getSeq());
			stmt.executeUpdate();
			
			while(rs.next()) {
				vo = new BoardVO();
				vo.setSeq(rs.getInt("SEQ"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setWriter(rs.getString("WRITER"));
				vo.setContent(rs.getString("CONTENT"));
				vo.setRegdate(rs.getDate("REGDATE"));
				vo.setCnt(rs.getInt("CNT"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeResource(rs, stmt, conn);
		}
		return vo;
	}
	
	public ArrayList<BoardVO> getBoardList(BoardVO boardVO) {
		ArrayList<BoardVO> boardList = new ArrayList<BoardVO>();
		BoardVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_SELECT);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				vo = new BoardVO();
				vo.setSeq(rs.getInt("SEQ"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setWriter(rs.getString("WRITER"));
				vo.setContent(rs.getString("CONTENT"));
				vo.setRegdate(rs.getDate("REGDATE"));
				vo.setCnt(rs.getInt("CNT"));
				boardList.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.closeResource(rs, stmt, conn);
		}
		
		return boardList;
	}
}
