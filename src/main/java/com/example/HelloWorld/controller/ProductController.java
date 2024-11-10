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
        log.info("product service ====================info");
        return "Product details from product service";
    }
    @GetMapping("/debug")
    public String debug(){
        log.debug("product service ====================debug");
        return "Product details from product service";
    }

    @GetMapping("/error")
    public String error(){
        log.info("product service ====================error");
        try{
            int a = 10/0;
        }catch (Exception e){
            log.error("Error while calculating divide operation: "+e.getMessage());
        }
        return "PError while calculating divide operation";
    }
    @GetMapping("/trace")
    public String trace(){
        log.info("product service ====================error");
        try{
            int a = 10/0;
        }catch (Exception e){
            log.error("Error while calculating divide operation: ",e);

        }
        return "PError while calculating divide operation";
    }

}
