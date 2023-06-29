package biz.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import biz.common.JDBCConnection;

public class boardDAO {

		// DB 연결 준비
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		// 1. 글 목록 불러오기
		public ArrayList<boardVO> allBoardList(){
			ArrayList<boardVO> boardList = new ArrayList<boardVO>();
			try {
				conn = JDBCConnection.getConnection();
				String sql = "select * from ezen_board order by seq desc";
				stmt = conn.prepareStatement(sql);
				rs = stmt.executeQuery();
				while(rs.next()) {
					boardVO bean = new boardVO();
					bean.setSeq(rs.getInt(1));
					bean.setCampus(rs.getString(2));
					bean.setBoardtype(rs.getString(3));
					bean.setTitle(rs.getString(4));
					bean.setEmail(rs.getString(5));
					bean.setContent(rs.getString(6));
					bean.setRegdate(rs.getDate(7));
					bean.setId(rs.getString(8));
					bean.setCnt(rs.getInt(9));
					
					boardList.add(bean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return boardList;
		}
		// 7. 선택한 게시판 목록 불러오기
		public ArrayList<boardVO> selectBoardList(String boardtype2){
			ArrayList<boardVO> boardList = new ArrayList<boardVO>();
			try {
				conn = JDBCConnection.getConnection();
				String sql = "select * from ezen_board where boardtype=? order by seq desc";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, boardtype2);
				rs = stmt.executeQuery();
				while(rs.next()) {
					boardVO bean = new boardVO();
					bean.setSeq(rs.getInt(1));
					bean.setCampus(rs.getString(2));
					bean.setBoardtype(rs.getString(3));
					bean.setTitle(rs.getString(4));
					bean.setEmail(rs.getString(5));
					bean.setContent(rs.getString(6));
					bean.setRegdate(rs.getDate(7));
					bean.setId(rs.getString(8));
					bean.setCnt(rs.getInt(9));
					
					boardList.add(bean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return boardList;
		}
		
		// 2. 글 상세보기
		public boardVO getOneBoard(int seq) {
			boardVO bean = new boardVO();
			try {
				conn = JDBCConnection.getConnection();
				// 글 추가
				String sql="select * from ezen_board where seq = ?";
				stmt = conn.prepareStatement(sql);
				stmt.setInt(1, seq);
				rs = stmt.executeQuery();
				if(rs.next()) {
					bean.setSeq(rs.getInt(1));
					bean.setCampus(rs.getString(2));
					bean.setBoardtype(rs.getString(3));
					bean.setTitle(rs.getString(4));
					bean.setEmail(rs.getString(5));
					bean.setContent(rs.getString(6));
					bean.setRegdate(rs.getDate(7));
					bean.setId(rs.getString(8));
					bean.setCnt(rs.getInt(9));
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return bean;
		}
		// 3. 글 수정하기
		public int updateBoard(boardVO bean) {
			int cnt = 0;
			try {
				conn = JDBCConnection.getConnection();
				String sql = "update ezen_board set campus = ?, boardtype = ?, title = ?, content = ? where seq = ?";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, bean.getCampus());
				stmt.setString(2, bean.getBoardtype());
				stmt.setString(3, bean.getTitle());
				stmt.setString(4, bean.getContent());
				stmt.setInt(5, bean.getSeq());
				cnt = stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return cnt;
		}
		// 4. 글 작성하기
		public int addBoard(boardVO bean) {
			int cnt = 0;
			try {
				conn = JDBCConnection.getConnection();
				String sql = "INSERT INTO ezen_board VALUES (ezen_board_seq.nextval,?,?,?,?,?,sysdate ,?, default)";
				
				stmt = conn.prepareStatement(sql);
				
				stmt.setString(1, bean.getCampus());
				stmt.setString(2, bean.getBoardtype());
				stmt.setString(3, bean.getTitle());
				stmt.setString(4, bean.getEmail());
				stmt.setString(5, bean.getContent());
				stmt.setString(6, bean.getId());
				
				cnt = stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return cnt;
		}
		// 5. 최신글 seq값 가져오기
		public int getMaxSeq() {
			int seq = 0;
			try {
				conn = JDBCConnection.getConnection();
				String sql = "select * from ezen_board where seq = (select max(seq) from ezen_board)";
				
				stmt = conn.prepareStatement(sql);
				
				rs = stmt.executeQuery();
				if(rs.next()) {
					seq = rs.getInt("seq");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return seq;
		}
		
		// 6. 글 삭제하기
		public int deleteBoard(int seq) {
			int cnt = 0;
			try {
				conn = JDBCConnection.getConnection();
				String sql = "delete from ezen_board where seq = ?";
				
				stmt = conn.prepareStatement(sql);
				stmt.setInt(1,seq);
				cnt = stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return cnt;
		}
		// 8. 글 검색하기
		public ArrayList<boardVO> searchBoard(String search_board) {
			ArrayList<boardVO> boardList = new ArrayList<boardVO>();
			try {
				conn = JDBCConnection.getConnection();
				String sql = "select * from ezen_board where title LIKE ? order by seq desc";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, "%" + search_board + "%");
				rs = stmt.executeQuery();
				while(rs.next()) {
					boardVO bean = new boardVO();
					bean.setSeq(rs.getInt(1));
					bean.setCampus(rs.getString(2));
					bean.setBoardtype(rs.getString(3));
					bean.setTitle(rs.getString(4));
					bean.setEmail(rs.getString(5));
					bean.setContent(rs.getString(6));
					bean.setRegdate(rs.getDate(7));
					bean.setId(rs.getString(8));
					bean.setCnt(rs.getInt(9));
					
					boardList.add(bean);
				}
				
				stmt = conn.prepareStatement(sql);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return boardList;
		}
		// 8. 글 검색하기 + 게시판 타입 적용
		public ArrayList<boardVO> selectSearchBoard(String search_board, String boardtype2) {
			ArrayList<boardVO> boardList = new ArrayList<boardVO>();
			try {
				conn = JDBCConnection.getConnection();
				String sql = "select * from ezen_board where title LIKE ? and boardtype = ? order by seq desc";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, "%" + search_board + "%");
				stmt.setString(2, boardtype2);
				rs = stmt.executeQuery();
				while(rs.next()) {
					boardVO bean = new boardVO();
					bean.setSeq(rs.getInt(1));
					bean.setCampus(rs.getString(2));
					bean.setBoardtype(rs.getString(3));
					bean.setTitle(rs.getString(4));
					bean.setEmail(rs.getString(5));
					bean.setContent(rs.getString(6));
					bean.setRegdate(rs.getDate(7));
					bean.setId(rs.getString(8));
					bean.setCnt(rs.getInt(9));
					
					boardList.add(bean);
				}
				
				stmt = conn.prepareStatement(sql);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return boardList;
		}
		// 9. 글 검색하기 + 게시판 타입 적용
		public ArrayList<boardVO> selectCampus(String campus) {
			ArrayList<boardVO> boardList = new ArrayList<boardVO>();
			try {
				conn = JDBCConnection.getConnection();
				String sql = "select * from ezen_board where campus = ? order by seq desc";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, campus);
				rs = stmt.executeQuery();
				while(rs.next()) {
					boardVO bean = new boardVO();
					bean.setSeq(rs.getInt(1));
					bean.setCampus(rs.getString(2));
					bean.setBoardtype(rs.getString(3));
					bean.setTitle(rs.getString(4));
					bean.setEmail(rs.getString(5));
					bean.setContent(rs.getString(6));
					bean.setRegdate(rs.getDate(7));
					bean.setId(rs.getString(8));
					bean.setCnt(rs.getInt(9));
					
					boardList.add(bean);
				}
				
				stmt = conn.prepareStatement(sql);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCConnection.close(rs, stmt, conn);
			}
			return boardList;
		}

		// 9. 글 검색하기 + 게시판 타입 적용
				public ArrayList<boardVO> selectCampusList(String campus, String search_board) {
					ArrayList<boardVO> boardList = new ArrayList<boardVO>();
					try {
						conn = JDBCConnection.getConnection();
						String sql = "select * from ezen_board where campus = ? and title like ? order by seq desc";
						stmt = conn.prepareStatement(sql);
						stmt.setString(1, campus);
						stmt.setString(2, "%" + search_board + "%");
						rs = stmt.executeQuery();
						while(rs.next()) {
							boardVO bean = new boardVO();
							bean.setSeq(rs.getInt(1));
							bean.setCampus(rs.getString(2));
							bean.setBoardtype(rs.getString(3));
							bean.setTitle(rs.getString(4));
							bean.setEmail(rs.getString(5));
							bean.setContent(rs.getString(6));
							bean.setRegdate(rs.getDate(7));
							bean.setId(rs.getString(8));
							bean.setCnt(rs.getInt(9));
							
							boardList.add(bean);
						}
						
						stmt = conn.prepareStatement(sql);
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						JDBCConnection.close(rs, stmt, conn);
					}
					return boardList;
				}
		
		// 8. 글 검색하기 + 게시판 타입 적용
				public ArrayList<boardVO> selectCamSearchBoard(String search_board, String boardtype2, String campus) {
					ArrayList<boardVO> boardList = new ArrayList<boardVO>();
					try {
						conn = JDBCConnection.getConnection();
						String sql = "select * from ezen_board where title LIKE ? and boardtype = ? and campus=? order by seq desc";
						stmt = conn.prepareStatement(sql);
						stmt.setString(1, "%" + search_board + "%");
						stmt.setString(2, boardtype2);
						stmt.setString(3, campus);
						rs = stmt.executeQuery();
						while(rs.next()) {
							boardVO bean = new boardVO();
							bean.setSeq(rs.getInt(1));
							bean.setCampus(rs.getString(2));
							bean.setBoardtype(rs.getString(3));
							bean.setTitle(rs.getString(4));
							bean.setEmail(rs.getString(5));
							bean.setContent(rs.getString(6));
							bean.setRegdate(rs.getDate(7));
							bean.setId(rs.getString(8));
							bean.setCnt(rs.getInt(9));
							
							boardList.add(bean);
						}
						
						stmt = conn.prepareStatement(sql);
					} catch (Exception e) {
						e.printStackTrace();
					}
					return boardList;
				}
		
		public ArrayList<boardVO> selectCampus(String campus, String boardtype) {
			ArrayList<boardVO> boardList = new ArrayList<boardVO>();
			try {
				conn = JDBCConnection.getConnection();
				String sql = "select * from ezen_board where campus = ? and boardtype = ? order by seq desc";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, campus);
				stmt.setString(2, boardtype);
				rs = stmt.executeQuery();
				while(rs.next()) {
					boardVO bean = new boardVO();
					bean.setSeq(rs.getInt(1));
					bean.setCampus(rs.getString(2));
					bean.setBoardtype(rs.getString(3));
					bean.setTitle(rs.getString(4));
					bean.setEmail(rs.getString(5));
					bean.setContent(rs.getString(6));
					bean.setRegdate(rs.getDate(7));
					bean.setId(rs.getString(8));
					bean.setCnt(rs.getInt(9));
					
					boardList.add(bean);
				}
				
				stmt = conn.prepareStatement(sql);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCConnection.close(rs, stmt, conn);
			}
			return boardList;
		}
		
		
}
