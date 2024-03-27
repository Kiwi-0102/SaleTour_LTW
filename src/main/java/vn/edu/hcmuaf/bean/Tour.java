package vn.edu.hcmuaf.bean;

public class Tour {
    private int id;
    private String region;
    private Integer discountId;  // Integer để cho phép giá trị null
    private String name;
    private String image;
    private int price;
    private String startTime;
    private String duration;
    private String schedule;
    private String description;

    public Tour() {
    }

    public Tour(int id, String region, Integer discountId, String name, String image, int price,
                String startTime, String duration, String schedule, String description) {
        this.id = id;
        this.region = region;
        this.discountId = discountId;
        this.name = name;
        this.image = image;
        this.price = price;
        this.startTime = startTime;
        this.duration = duration;
        this.schedule = schedule;
        this.description = description;
    }

    public Tour(int id, String name, String image, int price, String duration) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.duration = duration;
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

    public Integer getDiscountId() {
        return discountId;
    }

    public void setDiscountId(Integer discountId) {
        this.discountId = discountId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return this.image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return this.price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        return "tour{" +
                "id=" + id +
                ", region=" + region +
                ", discountId=" + discountId +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", startTime=" + startTime +
                ", duration='" + duration + '\'' +
                ", schedule='" + schedule + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    public void setDescription(String description) {
        this.description = description;
    }



    public String toStringforIndex() {
        return "tour{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", duration='" + duration + '\'' +
                '}';
    }
 }
