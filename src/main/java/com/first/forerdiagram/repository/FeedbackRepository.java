package com.first.forerdiagram.repository;

import jakarta.transaction.Transactional;
import com.first.forerdiagram.model.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface FeedbackRepository extends JpaRepository<Feedback, Long> {

}
