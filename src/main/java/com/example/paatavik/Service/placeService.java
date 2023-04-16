package com.example.paatavik.Service;


import com.example.paatavik.Model.place;
import com.example.paatavik.Repository.placesInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("All")
@Service
@Transactional
public class placeService {
    @Autowired
    private placesInterface pi;

    public place placeData(String city){return pi.findByCity(city);}

    public place placesData(String city, String state){return pi.findByCityAndState(city, state);}

    public List<place> placesList()
    {
        return pi.findAll();
    }
}
