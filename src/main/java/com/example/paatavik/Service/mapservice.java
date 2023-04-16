package com.example.paatavik.Service;

import com.example.paatavik.Model.GeocodingResponse;
import com.example.paatavik.Model.Geometry;
import com.example.paatavik.Model.latlng;
import com.example.paatavik.Model.location;
import com.example.paatavik.Repository.latlngRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class mapservice {

    @Autowired
    private latlngRepository lngrep;
    private static final String apiKey = "AIzaSyCTWAOF_H060Hi9GKYHvRApqrWPrOCjGI0";

    public String[] addCoordinates(String loca) {

        String url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + loca + ","+ "&key=" + apiKey;
        String co[] = new String[2];
        RestTemplate restTemplate = new RestTemplate();
        GeocodingResponse response = restTemplate.getForObject(url, GeocodingResponse.class);
        if(response!=null) {
            Geometry g = response.getResults().get(0).getGeometry();
            location coordinates=g.getLocation();
            String lat = coordinates.getLat().toString();
            String log = coordinates.getLng().toString();
            co[0] = lat;
            co[1] = log;
            System.out.println("Latitude "+lat);
            System.out.println("Longitude "+ log);
            return co;
        }
        return null;
    }

    public List<latlng> getAllData()
    {
        List<latlng> latlngList=new ArrayList<>();
        lngrep.findAll().forEach(latlngList::add);

        return latlngList;

    }
}