package org.redeyefrog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DemoController {

    @GetMapping("/welcome")
    public ModelAndView welcome() {
        ModelAndView mv = new ModelAndView("welcome/welcome");
        mv.addObject("welcome", "Welcome to Demo Page");
        return mv;
    }

}
