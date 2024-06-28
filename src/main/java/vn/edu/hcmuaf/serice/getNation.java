package vn.edu.hcmuaf.serice;

import com.maxmind.geoip2.DatabaseReader;
import com.maxmind.geoip2.exception.GeoIp2Exception;
import com.maxmind.geoip2.model.CityResponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Arrays;

import static vn.edu.hcmuaf.serice.PublicIPFetcher.getPublicIP;


@WebServlet(name = "Test", value = "/Test")
public class getNation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Nation(req);
    }

    public static String Nation(HttpServletRequest request) {
        String nation = null;
        try {
            // Khởi tạo đối tượng DatabaseReader từ tệp cơ sở dữ liệu
            DatabaseReader dbr = new DatabaseReader.Builder(new File(request.getServletContext().getRealPath("/WEB-INF/ipAddress.mmdb"))).build();

            // Tra cứu thông tin vị trí từ địa chỉ IP
            InetAddress PublicIPFetcher = InetAddress.getByName(getPublicIP());
            CityResponse response = dbr.city(PublicIPFetcher);

            // Lấy thông tin về thành phố từ phản hồi
            nation = response.getCountry().getName();
        } catch (IOException | GeoIp2Exception e) {
            throw new RuntimeException(e);
        }
        return nation;
    }


}
