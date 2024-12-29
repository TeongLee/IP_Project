package com.example.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.UserDAO;
import com.example.model.User;

@Controller
public class HomeController {

    private final UserDAO userDAO;

    public HomeController() {
        this.userDAO = new UserDAO();
    }

    @ModelAttribute("roles")
    public List<String> getRoles() {
        return Arrays.asList("stateAdmin", "student", "districtSupervisor", "schoolCoordinator");
    }

    @GetMapping("/")
    public String showLoginPage(Model model) {
        model.addAttribute("error", null);
        model.addAttribute("success", null);
        return "auth/login";
    }

    @PostMapping("/login")
    public String login(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("role") String role,
            Model model) {

        try {
            User user = userDAO.findByEmail(email);

            if (user == null) {
                model.addAttribute("error", "User not found.");
                return "auth/login";
            }

            if (!user.getPassword().equals(password)) {
                model.addAttribute("error", "Incorrect password.");
                return "auth/login";
            }

            if (!user.getRole().equalsIgnoreCase(role)) {
                model.addAttribute("error", "Role mismatch. Please select the correct role.");
                return "auth/login";
            }

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
                    model.addAttribute("error", "Invalid role.");
                    return "auth/login";
            }
        } catch (Exception e) {
            model.addAttribute("error", "An unexpected error occurred. Please try again.");
        }

        return "auth/login";
    }

    @GetMapping("/signup")
    public String showSignupPage(Model model) {
        model.addAttribute("error", null);
        model.addAttribute("success", null);
        return "auth/signup";
    }

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
            return "auth/signup";
        }
    
        try {
            User existingUser = null;
            try {
                existingUser = userDAO.findByEmail(email);
            } catch (EmptyResultDataAccessException e) {
                // No user found, safe to proceed
            }
    
            if (existingUser != null) {
                model.addAttribute("error", "Email is already registered.");
                return "auth/signup";
            }
    
            User user = new User();
            user.setRole(role);
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);
    
            int rowsAffected = userDAO.addUser(user);
            if (rowsAffected > 0) {
                model.addAttribute("success", "Account created successfully! Please log in.");
                return "auth/login"; // Directly show the login page with the success message
            } else {
                model.addAttribute("error", "Failed to create account.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Error creating account. Please try again.");
        }
    
        return "auth/signup";
    }

    @GetMapping("/forgotpassword")
public String showForgotPasswordPage(Model model) {
    model.addAttribute("error", null);
    model.addAttribute("success", null);
    return "auth/forgotpassword";
}
@PostMapping("/resetpassword")
public String resetPassword(
        @RequestParam("email") String email,
        @RequestParam("newPassword") String newPassword,
        @RequestParam("confirmPassword") String confirmPassword,
        Model model) {

    if (!newPassword.equals(confirmPassword)) {
        model.addAttribute("error", "Passwords do not match.");
        return "auth/forgotpassword";
    }

    try {
        User user = userDAO.findByEmail(email);
        if (user == null) {
            model.addAttribute("error", "No account found with that email.");
            return "auth/forgotpassword";
        }

        // Update the password
        user.setPassword(newPassword);
        int rowsAffected = userDAO.updatePassword(user);
        if (rowsAffected > 0) {
            return "redirect:/?success=Password reset successfully! Please log in.";
        } else {
            model.addAttribute("error", "Failed to reset password. Please try again.");
        }
    } catch (Exception e) {
        e.printStackTrace();
        model.addAttribute("error", "An error occurred. Please try again.");
    }

    return "auth/forgotpassword";
}

    @GetMapping("/test-db")
    public String testDatabaseConnection(Model model) {
        boolean isConnected = userDAO.testConnection();
        model.addAttribute("dbStatus", isConnected ? "Database connected successfully!" : "Database connection failed.");
        return "auth/test";
    }
}
