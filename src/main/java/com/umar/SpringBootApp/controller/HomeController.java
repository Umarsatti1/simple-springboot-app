// spring-boot-app/src/main/java/com/umar/SpringBootApp/controller/HomeController.java
package com.umar.SpringBootApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "index";
    }
}
