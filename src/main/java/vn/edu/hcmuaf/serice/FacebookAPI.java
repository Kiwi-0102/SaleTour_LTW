package vn.edu.hcmuaf.serice;


import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

public class FacebookAPI {
    public static String getFacebookUserProfile(String accessToken) throws IOException, JSONException {
        HttpClient client = HttpClientBuilder.create().build();
        HttpGet get = new HttpGet("https://graph.facebook.com/me?access_token=" + accessToken);
        HttpResponse response = client.execute(get);
        HttpEntity entity = response.getEntity();
        String responseString = EntityUtils.toString(entity);
        JSONObject responseJson = new JSONObject(responseString);
        return responseJson.toString();
    }
}
