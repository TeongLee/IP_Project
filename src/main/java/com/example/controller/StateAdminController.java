package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/stateAdmin")
public class StateAdminController {

    @RequestMapping("/inventory")
    public ModelAndView displayInventory() {
        ModelAndView mv = new ModelAndView("stateAdmin/inventory");
        return mv;
    }

    @RequestMapping("/allocationApproval")
    public ModelAndView requestMethodName() {
        ModelAndView mv = new ModelAndView("stateAdmin/allocationApproval");
        return mv;
    }
    
}