package vn.edu.hcmuaf.bean;

public class ImageTours {
    private int id;
    private String URL;
    private int tourId;

    public ImageTours(int id, String URL, int tourId) {
        this.id = id;
        this.URL = URL;
        this.tourId = tourId;
    }

    public ImageTours(int id, String URL) {
        this.id = id;
        this.URL = URL;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    @Override
    public String toString() {
        return "ImageTours{" +
                "id=" + id +
                ", URL='" + URL + '\'' +
                ", tourId=" + tourId +
                '}';
    }
}
