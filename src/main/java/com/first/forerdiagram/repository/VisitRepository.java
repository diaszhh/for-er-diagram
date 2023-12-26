package com.first.forerdiagram.repository;

import jakarta.transaction.Transactional;
import com.first.forerdiagram.model.Visit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface VisitRepository extends JpaRepository<Visit, Long> {

}
