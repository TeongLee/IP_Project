package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/stateAdmin")
public class StateAdminController {

    @RequestMapping("/allocationApproval")
    public ModelAndView requestAllocationApproval() {
        ModelAndView mv = new ModelAndView("stateAdmin/allocationApproval");
        return mv;
    }

    @RequestMapping("/inventory")
    public ModelAndView requestInventoryList() {
        ModelAndView mv = new ModelAndView("stateAdmin/inventory");
        return mv;
    }

    @RequestMapping("/schoolList")
    public ModelAndView requestSchoolList() {
        ModelAndView mv = new ModelAndView("stateAdmin/schoolList");
        return mv;
    }

    @RequestMapping("/dashboard")
    public ModelAndView requestStateAdminDashboard() {
        ModelAndView mv = new ModelAndView("stateAdmin/stateAdminDashboard");
        return mv;
    }
}