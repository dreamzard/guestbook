package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class HelloDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public void insertGuestbook(String id, String name, String message) {
		try {
			conn = DBUtil.getConnection();
			String sql = "insert into tbl_guestbook values(?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
            pstmt.setString(3, message);

			pstmt.executeUpdate();
			

//			System.out.println(id+", "+name+", "+ message);
			
//			System.exit(0);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, pstmt, rs);
			
		}

	}
	
	public void deleteGuestbook(String del_id) {
		try {
			conn = DBUtil.getConnection();
			String sql = "delete from tbl_guestbook where id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, del_id);

			pstmt.executeUpdate();
			

			System.out.println(del_id);
			
//			System.exit(0);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, pstmt, rs);
			
		}

	}

	public List<ResvDTO> getAll() {
		List<ResvDTO> list = new ArrayList<ResvDTO>();
		try {
			conn = DBUtil.getConnection();
			String sql = "SELECT * FROM tbl_guestbook order by id";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String message = rs.getString("message");

				ResvDTO resvDto = new ResvDTO(id, name, message);

				list.add(resvDto);
				
				conn.commit();

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, pstmt, rs);
		}
		return list;
	}

}