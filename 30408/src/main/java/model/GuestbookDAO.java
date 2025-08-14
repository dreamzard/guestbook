package model;

import util.DBUtil;
import java.sql.*;
import java.util.*;

public class GuestbookDAO {
    public void insert(GuestbookDTO dto) {
        String sql = "INSERT INTO guestbook(id, name, message) VALUES (guestbook_seq.NEXTVAL, ?, ?)";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DBUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getMessage());
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, null);
        }
    }

    public List<GuestbookDTO> selectAll() {
        List<GuestbookDTO> list = new ArrayList<>();
        String sql = "SELECT id, name, message, TO_CHAR(created_at, 'YYYY-MM-DD HH24:MI:SS') AS created_at FROM guestbook ORDER BY id DESC";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                GuestbookDTO dto = new GuestbookDTO();
                dto.setId(rs.getInt("id"));
                dto.setName(rs.getString("name"));
                dto.setMessage(rs.getString("message"));
                dto.setCreatedAt(rs.getString("created_at"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
        return list;
    }
}
