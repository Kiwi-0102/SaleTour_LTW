package vn.edu.hcmuaf.bean;

import java.util.Date;

public class options extends service_tours{
    private int id;
    private Date departDate;
    private int erviceId;
    private int valiId;

    public options() {
    }

    public options(int id, Date departDate, int erviceId, int valiId) {
        this.id = id;
        this.departDate = departDate;
        this.erviceId = erviceId;
        this.valiId = valiId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDepartDate() {
        return departDate;
    }

    public void setDepartDate(Date departDate) {
        this.departDate = departDate;
    }

    public int getErviceId() {
        return erviceId;
    }

    public void setErviceId(int erviceId) {
        this.erviceId = erviceId;
    }

    public int getValiId() {
        return valiId;
    }

    public void setValiId(int valiId) {
        this.valiId = valiId;
    }
}

