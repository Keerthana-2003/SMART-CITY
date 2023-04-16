package com.example.paatavik.Service;

import com.example.paatavik.Model.citydata;
import com.example.paatavik.Repository.CitydataInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class CitydataService {
    @Autowired
    private CitydataInterface citydataInterface;

    public CitydataService(CitydataInterface citydataInterface) {
        this.citydataInterface = citydataInterface;
    }

    public List<citydata> findbyTypeandcity(String type, String city) {
        List<citydata> ll = new ArrayList<>();
        for (citydata c : citydataInterface.findAllByCityAndType(city, type)) {
            ll.add(c);
        }
        return ll;
    }
}