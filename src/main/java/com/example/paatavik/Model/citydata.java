package com.example.paatavik.Model;

import javax.persistence.*;

@Entity
@Table(name = "citydata")
public class citydata {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String placename;
    private String placedesc;
    private String placeloc;
    private String capacity;
    private String rating;
    private String type;
    private String city;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlacename() {
        return placename;
    }

    public void setPlacename(String placename) {
        this.placename = placename;
    }

    public String getPlacedesc() {
        return placedesc;
    }

    public void setPlacedesc(String placedesc) {
        this.placedesc = placedesc;
    }

    public String getPlaceloc() {
        return placeloc;
    }

    public void setPlaceloc(String placeloc) {
        this.placeloc = placeloc;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
