package com.example.paatavik.Model;

import java.util.List;

public class GeocodingResponse {

    private List<Geocoding> results;

    public List<Geocoding> getResults() {
        return results;
    }

    public void setResults(List<Geocoding> results) {
        this.results = results;
    }
}
