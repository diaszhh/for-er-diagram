package com.first.forerdiagram.repository;

import com.first.forerdiagram.model.Place;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface PlaceRepository extends JpaRepository<Place, Long> {

}
