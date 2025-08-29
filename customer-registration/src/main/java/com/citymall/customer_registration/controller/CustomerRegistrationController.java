package com.citymall.customer_registration.controller;

import com.citymall.customer_registration.dao.CustomerRegistrationDao;
import com.citymall.customer_registration.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CustomerRegistrationController {

    private final CustomerRegistrationDao customerRegistrationDao;

    public CustomerRegistrationController(final CustomerRegistrationDao customerRegistrationDao) {
        this.customerRegistrationDao = customerRegistrationDao;
    }

    @GetMapping("/")
    public String showRegistrationForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer_registration";
    }

    @PostMapping("/register")
    public String registerCustomer(@ModelAttribute("customer") Customer customer, Model model) {
        customerRegistrationDao.save(customer);
        model.addAttribute("registeredCustomer", customer);
        return "success";
    }
}
