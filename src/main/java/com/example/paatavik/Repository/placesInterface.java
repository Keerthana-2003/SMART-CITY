package com.example.paatavik.Repository;


import com.example.paatavik.Model.place;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface placesInterface extends JpaRepository<place, String> {
     place findByCity(String city);
     place findByCityAndState(String city, String state);
     List<place> findAll();

}
