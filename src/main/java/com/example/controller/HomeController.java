package com.example.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.model.User;
import com.example.repository.UserRepository;

@Controller
public class HomeController {

    @Autowired
    private UserRepository userRepository;

    // Default route for login page
    @GetMapping("/")
    public String showLoginPage(Model model) {
        // Add default attributes if needed
        model.addAttribute("error", null);
        return "login"; // Return login.jsp
    }
//     @GetMapping("/")
// public String testPage() {
//     return "test";
// }


    // Handle login form submission
    @PostMapping("/")
    public String login(
            @RequestParam("role") String role,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            Model model) {

        Optional<User> userOptional = userRepository.findByEmail(email);

        if (userOptional.isPresent()) {
            User user = userOptional.get();

            if (user.getPassword().equals(password) && user.getRole().equalsIgnoreCase(role)) {
                switch (role.toLowerCase()) {
                    case "stateadmin":
                        return "redirect:/stateAdmin/dashboard";
                    case "student":
                        return "redirect:/student/dashboard";
                    case "districtsupervisor":
                        return "redirect:/districtSupervisor/dashboard";
                    case "schoolcoordinator":
                        return "redirect:/schoolCoordinator/dashboard";
                }
            }
        }

        model.addAttribute("error", "Invalid email, password, or role.");
        return "login"; // Return to login.jsp with an error
    }

    // Show the sign-up page
    @GetMapping("/signup")
    public String showSignupPage() {
        return "signup"; // Return signup.jsp
    }

    // Handle sign-up form submission
    @PostMapping("/signup")
    public String signup(
            @RequestParam("role") String role,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,
            Model model) {

        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match.");
            return "signup"; // Return back to signup.jsp
        }

        if (userRepository.findByEmail(email).isPresent()) {
            model.addAttribute("error", "Email already exists.");
            return "signup"; // Return back to signup.jsp
        }

        User user = new User(role, name, email, password);
        userRepository.save(user);

        model.addAttribute("success", "User registered successfully!");
        return "redirect:/"; // Redirect to login page
    }

    @GetMapping("/forgotpassword")
    public String showForgotPasswordPage() {
        return "forgotpassword"; // Return forgotpassword.jsp
    }

    // Handle forgot password form submission
    @PostMapping("/forgotpassword")
    public String resetPassword(
            @RequestParam("email") String email,
            @RequestParam("newPassword") String newPassword,
            @RequestParam("confirmPassword") String confirmPassword,
            Model model) {
    
        Optional<User> userOptional = userRepository.findByEmail(email);
    
        if (!userOptional.isPresent()) {
            model.addAttribute("error", "Email not found.");
            return "forgotpassword";
        }
    
        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match.");
            return "forgotpassword";
        }
    
        User user = userOptional.get();
        user.setPassword(newPassword);
        userRepository.save(user);
    
        model.addAttribute("success", "Password reset successfully! Redirecting to login...");
        return "redirect:/"; // Redirects to login page
    }
    
}
