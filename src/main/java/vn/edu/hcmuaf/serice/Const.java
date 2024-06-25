package vn.edu.hcmuaf.serice;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Const {
    public static final String DAHUY = "Đã hủy";
    public static final String DAXONG = "Đã xong";
    public static final String DAXACNHAN = "Đã xác nhận";
    public static final String CHOXACNHAN = "Chờ xác nhận";
    public static final String DACHUANBITOUR = "Chuẩn bị tour";


    public static int daystar(String dayinput) {
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date inputDate = dateFormat.parse(dayinput);
            Date currentDate = new Date();
            long timeDifferenceInMillis = inputDate.getTime() - currentDate.getTime();
            long timeDifferenceInDays = timeDifferenceInMillis / (1000 * 60 * 60 * 24);
            return (int) Math.ceil(timeDifferenceInDays);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static void main(String[] args) {
        System.out.println(daystar("2024-07-01"));
    }
}
