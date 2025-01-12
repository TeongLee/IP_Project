package com.example.controller;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.ContentDAO;
import com.example.dao.CrewApplicationDAO;
import com.example.model.Content;
import com.example.model.CrewApplication;

@Controller
@RequestMapping("/student")
public class StudentController {

    private final CrewApplicationDAO crewApplicationDAO;
    private final ContentDAO contentDAO;

    public StudentController() {
        this.crewApplicationDAO = new CrewApplicationDAO();
        this.contentDAO = new ContentDAO();
    }

    @RequestMapping("/dashboard")
    public String requestStudentDashboard() {
        return "student/studentDashboard";
    }

    @RequestMapping("/uploadContent")
    public String requestUploadContent() {
        return "student/uploadContent";
    }

    @PostMapping("/submitContent")
public String submitContent(
        @RequestParam("title") String title,
        @RequestParam("description") String description,
        @RequestParam("videoLink") String videoLink,
        @RequestParam("uploadedBy") String uploadedBy,
        @RequestParam("recordingDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate recordingDate,
        Model model) {
    try {
        // Create and save content
        Content content = new Content(title, description, videoLink, uploadedBy, recordingDate);
        contentDAO.save(content);

        model.addAttribute("success", "Your content has been successfully uploaded!");
    } catch (Exception e) {
        e.printStackTrace();
        model.addAttribute("error", "Failed to upload your content. Please try again.");
    }
    return "student/uploadContent"; // Redirects back to the upload form
}


    @RequestMapping("/submitApplication")
    public String requestSubmitApplication() {
        return "student/submitApplication"; // No model attributes are set here on initial load
    }

    @PostMapping("/submitCrewApplication")
    public String submitCrewApplication(
            @RequestParam("name") String name,
            @RequestParam("position") String position,
            @RequestParam("description") String description,
            @RequestParam("videoLink") String videoLink,
            @RequestParam("videoDescription") String videoDescription,
            Model model) {
        try {
            // Save the crew application to the database
            CrewApplication application = new CrewApplication(name, position, description, videoLink, videoDescription, "Pending");
            crewApplicationDAO.save(application);

            // Add success message
            model.addAttribute("success", "Your application has been successfully submitted!");
        } catch (Exception e) {
            e.printStackTrace();

            // Add error message
            model.addAttribute("error", "Failed to submit your application. Please try again.");
        }

        return "student/submitApplication";
    }

    @GetMapping("/viewCrewApplications")
    public String viewCrewApplications(Model model) {
        model.addAttribute("crewApplications", crewApplicationDAO.getAllApplications());
        return "student/viewCrewApplications";
    }
}
