package vn.edu.hcmuaf.bean;

public class role {
    private int id;
    private String right;
    private String description;

    public role() {
    }

    public role(int id, String right, String description) {
        this.id = id;
        this.right = right;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRight() {
        return right;
    }

    public void setRight(String right) {
        this.right = right;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "role{" +
                "id=" + id +
                ", right='" + right + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
