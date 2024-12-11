package com.example.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
        return "authentication/login"; // Return login.jsp
    }

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
                // Redirect based on the user's role
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
    
        // Add an error message if authentication fails
        model.addAttribute("error", "Invalid email, password, or role.");
        return "authentication/login"; // Reload the login page with the error message
    }
    

    // Show the sign-up page
    @GetMapping("/signup")
    public String showSignupPage() {
        return "authentication/signup"; // Return signup.jsp
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
            return "authentication/signup"; // Reload the sign-up page with an error message
        }

        if (userRepository.findByEmail(email).isPresent()) {
            model.addAttribute("error", "Email already exists.");
            return "/authentication/signup"; // Reload the sign-up page with an error message
        }

        User user = new User(role, name, email, password);
        userRepository.save(user);

        model.addAttribute("success", "Account created successfully! Please log in.");
        return "authentication/signup"; // Reload the sign-up page with a success message
    }


    @GetMapping("/forgotpassword")
    public String showForgotPasswordPage() {
        return "authentication/forgotpassword"; // Return forgotpassword.jsp
    }

    // Handle forgot password form submission
    @PostMapping("/forgotpassword")
public String resetPassword(
        @RequestParam("email") String email,
        @RequestParam("newPassword") String newPassword,
        @RequestParam("confirmPassword") String confirmPassword,
        Model model,
        RedirectAttributes redirectAttributes) {

    Optional<User> userOptional = userRepository.findByEmail(email);

    if (!userOptional.isPresent()) {
        model.addAttribute("error", "Email not found.");
        return "authentication/forgotpassword"; // Return to the forgot password page with error
    }

    if (!newPassword.equals(confirmPassword)) {
        model.addAttribute("error", "Passwords do not match.");
        return "authentication/forgotpassword"; // Return to the forgot password page with error
    }

    User user = userOptional.get();
    user.setPassword(newPassword);
    userRepository.save(user);

    // Add a success message for the login page
    redirectAttributes.addFlashAttribute("success", "Password changed successfully! Please log in.");
    return "redirect:/"; // Redirects to the login page
    }

}
