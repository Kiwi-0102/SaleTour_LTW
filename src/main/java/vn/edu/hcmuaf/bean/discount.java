package vn.edu.hcmuaf.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class discount {
    private int id;
    private String type;
    private int value;
    private Date endDate;
    private String description;

    public discount(int id, String type, int value, Date endDate, String description) {
        this.id = id;
        this.type = type;
        this.value = value;
        this.endDate = endDate;
        this.description = description;
    }


    @Override
    public String toString() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return "discount{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", value=" + value +
                ", endDate=" + dateFormat.format(endDate) +
                ", description='" + description + '\'' +
                '}';
    }

    public static void main(String[] args) {
        // Example usage
        discount discount = new discount(1, "Giảm giá sốc", 20, new Date(), "20% off");
        System.out.println(discount.toString());
    }
}
