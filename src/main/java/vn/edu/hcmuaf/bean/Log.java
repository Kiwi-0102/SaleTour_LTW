package vn.edu.hcmuaf.bean;


import java.io.Serializable;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

public class Log implements Serializable {
    private int id;
    private LogLevel logLevel;
    private String address;
    private String ip;
    private String beforeValue;
    private String afterValue;
    private Timestamp createAt;
    public Log(){}
    public Log(int id, LogLevel logLevel, String address, String ip, String beforeValue, String afterValue, Timestamp createAt) {
        this.id = id;
        this.logLevel = logLevel;
        this.address = address;
        this.ip = ip;
        this.beforeValue = beforeValue;
        this.afterValue = afterValue;
        this.createAt = createAt;
    }
    public Log(LogLevel logLevel, String address, String ip, String beforeValue, String afterValue) {
        this.logLevel = logLevel;
        this.address = address;
        this.ip = ip;
        this.beforeValue = beforeValue;
        this.afterValue = afterValue;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", logLevel=" + logLevel +
                ", address='" + address + '\'' +
                ", ip='" + ip + '\'' +
                ", beforeValue='" + beforeValue + '\'' +
                ", afterValue='" + afterValue + '\'' +
                ", createAt=" + createAt +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LogLevel getLogLevel() {
        return logLevel;
    }

    public void setLogLevel(LogLevel logLevel) {
        this.logLevel = logLevel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getBeforeValue() {
        return beforeValue;
    }

    public void setBeforeValue(String beforeValue) {
        this.beforeValue = beforeValue;
    }

    public String getAfterValue() {
        return afterValue;
    }

    public void setAfterValue(String afterValue) {
        this.afterValue = afterValue;
    }

    public Timestamp getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Timestamp createAt) {
        this.createAt = createAt;
    }


}