package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/stateAdmin")
public class StateAdminController {

    @RequestMapping("/inventory")
    public ModelAndView displayInventory() {
        ModelAndView mv = new ModelAndView("inventory");
        return mv;
    }

    @RequestMapping("/allocationApproval")
    public ModelAndView requestMethodName() {
        ModelAndView mv = new ModelAndView("allocationApproval");
        return mv;
    }
    
}