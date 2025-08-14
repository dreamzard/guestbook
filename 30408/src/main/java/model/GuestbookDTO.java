package model;

public class GuestbookDTO {
    private int id;
    private String name;
    private String message;
    private String createdAt;

    public GuestbookDTO() {}
    public GuestbookDTO(String name, String message) {
        this.name = name;
        this.message = message;
    }

    // getter & setter
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
    public String getCreatedAt() { return createdAt; }
    public void setCreatedAt(String createdAt) { this.createdAt = createdAt; }
}
