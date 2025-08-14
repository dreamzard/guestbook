package model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResvDTO
 */
@WebServlet("/ResvDTO")
public class ResvDTO {
    private String resvNo;
    private String custNo;
    private String resvDate;
    private String courtNo;

    // 기본 생성자
    public ResvDTO() {}

    // 전체 필드를 받는 생성자
    public ResvDTO(String resvNo, String custNo, String resvDate, String courtNo) {
        this.resvNo = resvNo;
        this.custNo = custNo;
        this.resvDate = resvDate;
        this.courtNo = courtNo;
    }

    // Getter / Setter
    public String getResvNo() {
        return resvNo;
    }

    public void setResvNo(String resvNo) {
        this.resvNo = resvNo;
    }

    public String getCustNo() {
        return custNo;
    }

    public void setCustNo(String custNo) {
        this.custNo = custNo;
    }

    public String getResvDate() {
        return resvDate;
    }

    public void setResvDate(String resvDate) {
        this.resvDate = resvDate;
    }

    public String getCourtNo() {
        return courtNo;
    }

    public void setCourtNo(String courtNo) {
        this.courtNo = courtNo;
    }
}

