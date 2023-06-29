package biz.user;

import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.catalina.connector.Response;

import biz.common.JDBCConnection;

public class userDAO {
	// DB 연결 준비
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	public int joinMember(userVO bean) {
		int cnt = 0;
		
		try {
			conn = JDBCConnection.getConnection();
			String sql = "insert into ezen_member VALUES(?,?,?,?,?,?,?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, bean.getId());
			stmt.setString(2, bean.getPassword());
			stmt.setString(3, bean.getName());
			stmt.setString(4, bean.getGender());
			stmt.setString(5, bean.getBirthdate());
			stmt.setString(6, bean.getEmail());
			stmt.setString(7, bean.getTel());
			stmt.setString(8, bean.getCertification());
			stmt.setString(9, bean.getClassification());
			stmt.setString(10, bean.getCampus());
			stmt.setString(11, bean.getReception());
			
			cnt = stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	public userVO loginMember(String id, String password) {
        userVO user =  null;
           try {
              // 0.DB 접속
              conn = JDBCConnection.getConnection();
              // 1.sql
              String sql = "select * from ezen_member where id = ? and password = ?";
              // 2.prepareStatement
              stmt = conn.prepareStatement(sql);
              // 3. ? 맵핑
              stmt.setString(1,id);
              stmt.setString(2, password);
              // 4. 실행
              rs = stmt.executeQuery();
              // 5. 자바빈에 sql 출력 결과 할당하기
              if(rs.next()) {
                 user = new userVO();
                 user.setId(rs.getString("id"));
                 user.setEmail(rs.getString("email"));
              }
              
           } catch (ClassNotFoundException e) {
              e.printStackTrace();
           } catch(SQLException e) {
              e.printStackTrace();
           } finally {
              JDBCConnection.close(rs, stmt, conn);
           }
           // 6. 리턴
           return user;
     }
	
	public String getPassword(String id) {
		String password = null;
		
		try {
			conn = JDBCConnection.getConnection();
			String sql = "select password from ezen_member where id = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				password = rs.getString("password");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return password;
	}
	
	public userVO getMemberInfo(String id, String password) {
		userVO user = null;
		
		try {
			conn = JDBCConnection.getConnection();
			String sql = "select * from ezen_member where id = ? and password=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if(rs.next()) {
				user = new userVO();
				user.setId(rs.getString(1));
				user.setPassword(rs.getString(2));
				user.setName(rs.getString(3));
				user.setGender(rs.getString(4));
				user.setBirthdate(rs.getString(5));
				user.setEmail(rs.getString(6));
				user.setTel(rs.getString(7));
				user.setCertification(rs.getString(8));
				user.setClassification(rs.getString(9));
				user.setCampus(rs.getString(10));
				user.setReception(rs.getString(11));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	// 7. 회원 리스트
	public ArrayList<userVO> getUserList(){
		ArrayList<userVO> userList = null;
		
		try {
			conn = JDBCConnection.getConnection();
			String sql = "select * from ezen_member";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			userList = new ArrayList<userVO>();
			while(rs.next()) {
				userVO bean = new userVO();
				bean.setId(rs.getString(1));
				bean.setPassword(rs.getString(2));
				bean.setName(rs.getString(3));
				bean.setGender(rs.getString(4));
				bean.setBirthdate(rs.getString(5));
				bean.setEmail(rs.getString(6));
				bean.setTel(rs.getString(7));
				bean.setCertification(rs.getString(8));
				bean.setClassification(rs.getString(9));
				bean.setCampus(rs.getString(10));
				bean.setReception(rs.getString(11));
				
				userList.add(bean);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}

		return  userList;
	}
	
	// 6. 멤버 삭제하기
	public int deleteUser(String id) {
		int cnt = 0;
		try {
			conn = JDBCConnection.getConnection();
			String sql = "delete from ezen_member where id = ?";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,id);
			cnt = stmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, stmt, conn);
		}
		return cnt;
	}
	
	/* 회원정보수정 */
	public int updateMember(userVO bean) {
		int cnt = 0;
		
		try {
			conn = JDBCConnection.getConnection();
			String sql = "update ezen_member set password = ?, email=?, tel = ?, campus = ?, reception = ? where id = ?";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, bean.getPassword());
			stmt.setString(2, bean.getEmail());
			stmt.setString(3, bean.getTel());
			stmt.setString(4, bean.getCampus());
			stmt.setString(5, bean.getReception());
			stmt.setString(6, bean.getId());
			
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
}
