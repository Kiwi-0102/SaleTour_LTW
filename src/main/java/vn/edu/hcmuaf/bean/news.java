package vn.edu.hcmuaf.bean;


import java.util.Date;

public class news {
    private int id;
    private String title;
    private Date date;
    private String content;
    private String image;
    private String newsLink;

    public news(String title, Date date, String content, String image, String newsLink) {
        this.title = title;
        this.date = date;
        this.content = content;
        this.image = image;
        this.newsLink = newsLink;
    }

    public news(int id, String title, Date date, String content, String image, String newsLink) {
        this.id = id;
        this.title = title;
        this.date = date;
        this.content = content;
        this.image = image;
        this.newsLink = newsLink;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNewsLink() {
        return newsLink;
    }

    public void setNewsLink(String newsLink) {
        this.newsLink = newsLink;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", date=" + date +
                ", content='" + content + '\'' +
                ", image='" + image + '\'' +
                ", newsLink='" + newsLink + '\'' +
                '}';
    }
}
