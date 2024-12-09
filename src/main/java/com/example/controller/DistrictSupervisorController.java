package com.example.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping ;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/districtSupervisor")
public class DistrictSupervisorController {

  @RequestMapping("/dashboard")
  public ModelAndView districtSupervisorDashboard(){
    ModelAndView mv = new ModelAndView("/districtSupervisor/districtSupervisorDashboard");

    return mv;
  }
}
