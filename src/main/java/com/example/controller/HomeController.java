package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    /**
     * Display the login page.
     * URL: "/"
     */
    @GetMapping("/")
    public String loginPage() {
        return "login"; // Maps to login.jsp
    }

    /**
     * Display the sign-up page.
     * URL: "/signup"
     */
    @GetMapping("/signup")
    public String signupPage() {
        return "signup"; // Maps to signup.jsp
    }
    
    
    @GetMapping("/forgotpassword")
    public String forgotPasswordPage() {
        return "forgotpassword"; // Maps to forgotPassword.jsp
    }
    


    /**
     * Handle login form submission.
     * URL: "/login"
     */
    @PostMapping("/login")
public String login(
        @RequestParam("role") String role,
        @RequestParam("email") String email,
        @RequestParam("password") String password,
        Model model) {

    // Dummy authentication logic
    if ("dummy@example.com".equals(email) && "password123".equals(password)) {
        // Role-based redirection
        switch (role.toLowerCase()) {
            case "stateadmin":
                return "redirect:/stateAdmin/dashboard";
            case "student":
                return "redirect:/student/dashboard";
            case "districtsupervisor":
                return "redirect:/districtSupervisor/dashboard";
            case "schoolcoordinator":
                return "redirect:/schoolCoordinator/dashboard";
            default:
                model.addAttribute("error", "Invalid role selected.");
                return "login"; // Return to login page with error
        }
    }

    // Add error attribute for invalid credentials
    model.addAttribute("error", "Invalid email or password.");
    return "login"; // Stay on the login page and display the error
}


    /**
     * Handle sign-up form submission.
     * URL: "/signup"
     */
    @PostMapping("/signup")
    public String signup(
            @RequestParam("role") String role,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,
            Model model) {
    
        // Validate passwords
        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match.");
            return "signup"; // Return back to signup page with an error
        }
    
        // Dummy logic: Print user details to the console (replace with database logic)
        System.out.println("New User Signed Up: Role = " + role + ", Name = " + name + ", Email = " + email);
    
        // Add success attribute to display a notification
        model.addAttribute("success", true);
        return "signup"; // Reload the same signup page to show the notification
    }
    @PostMapping("/forgotpassword")
    public String handleForgotPassword(
            @RequestParam("email") String email,
            Model model) {
        // Dummy logic: Send a reset link (replace with actual logic)
        System.out.println("Password reset link sent to: " + email);
    
        // Add success message
        model.addAttribute("message", "A password reset link has been sent to your email.");
        return "forgotpassword"; // Stay on the same page to show the message
    }
    
}
