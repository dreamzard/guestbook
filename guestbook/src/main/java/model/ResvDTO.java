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
    private String id;
    private String name;
    private String message;

    // 기본 생성자
    public ResvDTO() {}

    // 전체 필드를 받는 생성자
    public ResvDTO(String id, String name, String message) {
        this.id = id;
        this.name = name;
        this.message = message;
    }

    // Getter / Setter
    public String getid() {
        return id;
    }

    public void setid(String id) {
        this.id = id;
    }

    public String getname() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getmessage() {
        return message;
    }

    public void setmessage(String message) {
        this.message = message;
    }
}

