package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student")
public class StudentController {

  @RequestMapping("/dashboard")
  public ModelAndView studentDashboard(){
    ModelAndView mv = new ModelAndView("/student/studentDashboard");

    return mv;
  }
}
