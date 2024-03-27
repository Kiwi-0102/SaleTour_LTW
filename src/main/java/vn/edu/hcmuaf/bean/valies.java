package vn.edu.hcmuaf.bean;

    public class valies extends Tour {
    private int id;
    private int userId;
    private int tourId;
    private int numChildren;
    private int numAdult;

    public valies() {
    }

    public valies(int userId, int tourId, int numChildren, int numAdult) {
        this.userId = userId;
        this.tourId = tourId;
        this.numChildren = numChildren;
        this.numAdult = numAdult;
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

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    public int getNumChildren() {
        return numChildren;
    }

    public void setNumChildren(int numChildren) {
        this.numChildren = numChildren;
    }

    public int getNumAdult() {
        return numAdult;
    }

    public void setNumAdult(int numAdult) {
        this.numAdult = numAdult;
    }

    @Override
    public String toString() {
        return "valies{" +
                "id=" + id +
                ", userId=" + userId +
                ", tourId=" + tourId +
                ", numChildren=" + numChildren +
                ", numAdult=" + numAdult +
                '}';
    }
}
