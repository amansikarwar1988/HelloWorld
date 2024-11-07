package com.example.HelloWorld.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")

public class ProductController {

    private static final Logger log = LoggerFactory.getLogger(ProductController.class);

    @GetMapping("/info")
    public String order(){
        log.info("product service ====================");
        return "Product details from product service";
    }

}
