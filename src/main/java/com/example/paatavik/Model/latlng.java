package com.example.paatavik.Model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "latlngname")
@Entity
public class latlng {
    @Id
    @Column(name ="id" )
    private int index;
    @Column(name = "name")
    private String toll;
    @Column(name = "Latitude")
    private float lat;
    @Column(name = "Longitude")
    private float lng;

    public latlng() {

    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getToll() {
        return toll;
    }

    public void setToll(String toll) {
        this.toll = toll;
    }

    public float getLat() {
        return lat;
    }

    public void setLat(float lat) {
        this.lat = lat;
    }

    public float getLng() {
        return lng;
    }

    public void setLng(float lng) {
        this.lng = lng;
    }

    public latlng(int index, String toll, float lat, float lng) {
        super();
        this.index = index;
        this.toll = toll;
        this.lat = lat;
        this.lng = lng;
    }

    @Override
    public String toString() {
        return "latlng{" +
                "index=" + index +
                ", toll='" + toll + '\'' +
                ", lat=" + lat +
                ", lng=" + lng +
                '}';
    }
}