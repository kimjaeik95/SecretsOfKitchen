package com.SecretsOfKitchen.recipe.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

/**
 * packageName    : com.SecretsOfKitchen.recipe.controller
 * fileName       : testController
 * author         : JAEIK
 * date           : 10/1/24
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 10/1/24        JAEIK       최초 생성
 */
@RestController
public class testController {
    @Value("${server.env}")
    private String env;
    @Value("${server.port}")
    private String serverPort;
    @Value("${server.serverAddress}")
    private String serverAddress;
    @Value("${serverName}")
    private String serverName;

    @GetMapping("/test")
    public ResponseEntity<?> testCheck() {
        Map<String, String> responseData = new TreeMap<>();
        responseData.put("serverName", serverName);
        responseData.put("serverPort", serverPort);
        responseData.put("serverAddress",serverAddress);
        responseData.put("env",env);
        return ResponseEntity.ok(responseData);

    }
    @GetMapping("/env")
    public ResponseEntity<?> testEnv() {
        return ResponseEntity.ok(env);
    }
}
