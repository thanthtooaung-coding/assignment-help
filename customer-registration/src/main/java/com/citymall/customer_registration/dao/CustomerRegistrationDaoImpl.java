package com.citymall.customer_registration.dao;

import com.citymall.customer_registration.model.Customer;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerRegistrationDaoImpl implements CustomerRegistrationDao {

    private final JdbcTemplate jdbcTemplate;

    public CustomerRegistrationDaoImpl(final JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void save(Customer customer) {
        String sql = "INSERT INTO customer_registration (first_name, last_name, email, phone, shipping_address, billing_address, password) VALUES (?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql,
                customer.getFirstName(),
                customer.getLastName(),
                customer.getEmail(),
                customer.getPhone(),
                customer.getShippingAddress(),
                customer.getBillingAddress(),
                customer.getPassword());
    }
}
