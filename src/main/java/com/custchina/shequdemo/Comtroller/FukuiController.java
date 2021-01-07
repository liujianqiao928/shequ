package com.custchina.shequdemo.Comtroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FukuiController {
    @RequestMapping("/fankui")
    public String toFu(){
        return "fuquestion";
    }
}
