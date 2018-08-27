package com.huawei.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@Service
public class HttpClientService {

    private static Logger log = Logger.getLogger(HttpClientService.class);

    @Autowired
    private RestTemplate restTemplate ;


    public final static String POST_Method_TYPE = "Post";
    public final static String GET_Method_TYPE = "Get";


    public JSONObject getDataFromManagerServices(String url, String methodType){
        return getDataFromManagerServices(url,null,methodType);
    }

    public JSONObject getDataFromManagerServices(String url, Map<String, Object> urlVariables, String methodType){
        JSONObject result = null;
        try {
            if (methodType.equals(POST_Method_TYPE)) {
                result = restTemplate.postForObject(url, urlVariables, JSONObject.class);
            } else {
                result = restTemplate.getForObject(url, JSONObject.class);
            }
        }catch (Exception e){
            log.error(e);
            e.printStackTrace();
        }
        return result;
    }
}
