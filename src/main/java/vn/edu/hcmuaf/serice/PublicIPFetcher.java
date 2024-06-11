package vn.edu.hcmuaf.serice;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.io.IOException;

public class PublicIPFetcher {

    public static String getPublicIP() {
        // Tạo một đối tượng HttpClient
        HttpClient client = HttpClient.newHttpClient();

        // Tạo một yêu cầu GET tới dịch vụ api.ipify.org
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create("https://api.ipify.org"))
                .build();

        // Gửi yêu cầu và lấy phản hồi
        HttpResponse<String> response = null;
        try {
            response = client.send(request, HttpResponse.BodyHandlers.ofString());
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

        // Trả về nội dung phản hồi, là địa chỉ IP public
        return response.body();
    }

    public static void main(String[] args) {
        String publicIP = getPublicIP();
        System.out.println("Địa chỉ IP public của bạn là: " + publicIP);
    }
}
