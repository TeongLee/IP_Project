package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/school")
public class SchoolCoordinatorController {

    @RequestMapping("/equipments")
    public ModelAndView requestMethodName() {
        ModelAndView mv = new ModelAndView("equipments");
        return mv;
    }

    @RequestMapping("/requestEquipment")
    public ModelAndView requestEquipment() {
        ModelAndView mv = new ModelAndView("requestEquipment");
        return mv;
    }
    
}