package com.example.controller;

import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/districtSupervisor")
public class DistrictSupervisorController {

  @RequestMapping("/schoolList")
  public ModelAndView requestSchoolList() {
      ModelAndView mv = new ModelAndView("districtSupervisor/schoolList");
      return mv;
  }

  @RequestMapping("/dashboard")
  public ModelAndView requestDistrictSupervisorDashboard() {
      ModelAndView mv = new ModelAndView("districtSupervisor/districtSupervisorDashboard");
      return mv;
  }

  @RequestMapping("/versionApproval")
  public ModelAndView requestVersionApproval() {
      ModelAndView mv = new ModelAndView("districtSupervisor/versionApproval");
      return mv;
  }
}
