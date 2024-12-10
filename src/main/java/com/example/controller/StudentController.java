package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student")
public class StudentController {

  @RequestMapping("/dashboard")
  public ModelAndView reqeustStudentDashboard() {
    ModelAndView mv = new ModelAndView("student/studentDashboard");

    return mv;
  }

  @RequestMapping("/submitApplication")
  public ModelAndView requestSubmitApplication() {
    ModelAndView mv = new ModelAndView("student/submitApplication");
    return mv;
  }

  @RequestMapping("/uploadContent")
  public ModelAndView requestUploadContent() {
    ModelAndView mv = new ModelAndView("student/uploadContent");
    return mv;
  }
}
