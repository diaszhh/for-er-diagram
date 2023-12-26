package com.first.forerdiagram.repository;

import com.first.forerdiagram.model.Event;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface EventRepository extends JpaRepository<Event, Long> {

}
