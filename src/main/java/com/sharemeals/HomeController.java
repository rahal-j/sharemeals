package com.sharemeals;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "index"; // Will render /WEB-INF/views/index.jsp
    }
    
    @GetMapping("/about")
    public String about() {
        return "about"; // loads about.jsp
    }
}
