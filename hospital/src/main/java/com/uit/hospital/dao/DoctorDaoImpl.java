package com.uit.hospital.dao;

import com.uit.hospital.model.Doctor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DoctorDaoImpl implements DoctorDao {

    private final JdbcTemplate jdbcTemplate;

    public DoctorDaoImpl(final JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void save(Doctor doctor) {
        String sql = "INSERT INTO doctor (name, specialization, contact_number, salary) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql,
                doctor.getName(),
                doctor.getSpecialization(),
                doctor.getContactNumber(),
                doctor.getSalary());
    }
}
