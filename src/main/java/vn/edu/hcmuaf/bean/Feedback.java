package vn.edu.hcmuaf.bean;

import java.util.Date;

public class Feedback {
    private int id;
    private int userId;
    private String text;
    private Date date;

    public Feedback() {
    }

    public Feedback(int id, int userId, String text, Date date) {
        this.id = id;
        this.userId = userId;
        this.text = text;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "feedback{" +
                "id=" + id +
                ", userId=" + userId +
                ", text='" + text + '\'' +
                ", date=" + date +
                '}';
    }
}
