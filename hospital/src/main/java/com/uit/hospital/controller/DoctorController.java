package com.uit.hospital.controller;

import com.uit.hospital.dao.DoctorDao;
import com.uit.hospital.model.Doctor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DoctorController {

    private final DoctorDao doctorDao;

    public DoctorController(final DoctorDao doctorDao) {
        this.doctorDao = doctorDao;
    }

    @GetMapping("/addDoctor")
    public String showAddDoctorForm(Model model) {
        model.addAttribute("doctor", new Doctor());
        return "add-doctor-form";
    }

    @PostMapping("/saveDoctor")
    public String saveDoctor(@ModelAttribute("doctor") Doctor doctor, Model model) {
        doctorDao.save(doctor);

        model.addAttribute("savedDoctor", doctor);
        
        return "doctor-confirmation";
    }
}
