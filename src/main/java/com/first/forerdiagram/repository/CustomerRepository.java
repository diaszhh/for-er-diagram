package com.first.forerdiagram.repository;

import com.first.forerdiagram.model.Customer;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
