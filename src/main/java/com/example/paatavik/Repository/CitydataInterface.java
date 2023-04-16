package com.example.paatavik.Repository;

import com.example.paatavik.Model.citydata;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CitydataInterface extends CrudRepository<citydata,Integer> {
    List<citydata> findAllByCityAndType(String city, String type);
}
