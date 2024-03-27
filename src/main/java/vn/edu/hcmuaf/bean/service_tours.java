package vn.edu.hcmuaf.bean;
public class service_tours {
    private int id;
    private String name;
    private float price;
    private String description;
    
    public service_tours() {
    }

    public service_tours(int id, String name, float price, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "service_tours{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }

    public static void main(String[] args) {
        service_tours service_tours = new service_tours(1, " A", 100.0f, "Vũng Tàu");
        System.out.println(service_tours.toString());
    }
}
