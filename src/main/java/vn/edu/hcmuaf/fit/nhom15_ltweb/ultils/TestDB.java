package vn.edu.hcmuaf.fit.nhom15_ltweb.ultils;

import java.sql.Connection;

public class TestDB {
    public static void main(String[] args) {
        Connection conn = DBConnect.getConnection();
        if (conn != null) {
            System.out.println("✅ Kết nối database lt_web thành công");
        } else {
            System.out.println("❌ Kết nối database thất bại");
        }
    }
}