package vn.edu.hcmuaf.bean;

public class categories {
    private int id;
    private String region;
    private String session;
    private String note;

    public categories() {
    }

    public categories(String region, String session, String note) {
        this.region = region;
        this.session = session;
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getSession() {
        return session;
    }

    public void setSession(String session) {
        this.session = session;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "categories{" +
                "id=" + id +
                ", region='" + region + '\'' +
                ", session='" + session + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
