package vn.edu.hcmuaf.bean;

public class HistoryBills {
    private int id;
    private int billId;
    private String title;
    private String changeDate;
    private String beforeValue;
    private String currentValue;

    public HistoryBills() {
    }

    public HistoryBills(int billId, String title, String changeDate, String beforeValue, String currentValue) {
        this.billId = billId;
        this.title = title;
        this.changeDate = changeDate;
        this.beforeValue = beforeValue;
        this.currentValue = currentValue;
    }

    public HistoryBills(int id, int billId, String title, String changeDate, String beforeValue, String currentValue) {
        this.id = id;
        this.billId = billId;
        this.title = title;
        this.changeDate = changeDate;
        this.beforeValue = beforeValue;
        this.currentValue = currentValue;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getChangeDate() {
        return changeDate;
    }

    public void setChangeDate(String changeDate) {
        this.changeDate = changeDate;
    }

    public String getBeforeValue() {
        return beforeValue;
    }

    public void setBeforeValue(String beforeValue) {
        this.beforeValue = beforeValue;
    }

    public String getCurrentValue() {
        return currentValue;
    }

    public void setCurrentValue(String currentValue) {
        this.currentValue = currentValue;
    }

    @Override
    public String toString() {
        return "historyBills{" +
                "id=" + id +
                ", billId=" + billId +
                ", title='" + title + '\'' +
                ", changeDate='" + changeDate + '\'' +
                ", beforeValue='" + beforeValue + '\'' +
                ", currentValue='" + currentValue + '\'' +
                '}';
    }
}
