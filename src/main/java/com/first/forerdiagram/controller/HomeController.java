package com.first.forerdiagram.controller;

import com.first.forerdiagram.model.Place;
import com.first.forerdiagram.repository.PlaceRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/")
public class HomeController {
    PlaceRepository placeRepository;

    @GetMapping
    public List<Place> getPlaces(){
        return placeRepository.findAll();
    }

}
