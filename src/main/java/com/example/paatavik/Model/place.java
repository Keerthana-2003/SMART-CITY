package com.example.paatavik.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "places")
public class place {
    @Id
    @Column(name = "city")
    private String city;
    @Column(name = "state")
    private String state;
    @Column(name = "desci")
    private String desc;
    @Column(name = "funds")
    private String funds;
    @Column(name = "projects")
    private String projects;
    @Column(name = "shares")
    private String shares;
    @Column(name = "image")
    private String image;
    @Column(name = "card_img")
    private String cardImage;


    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getFunds() {
        return funds;
    }

    public void setFunds(String funds) {
        this.funds = funds;
    }

    public String getProjects() {
        return projects;
    }

    public void setProjects(String projects) {
        this.projects = projects;
    }

    public String getShares() {
        return shares;
    }

    public void setShares(String shares) {
        this.shares = shares;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCardImage() {
        return cardImage;
    }

    public void setCardImage(String cardImage) {
        this.cardImage = cardImage;
    }

    public place(String city, String state, String desc, String funds, String projects, String shares, String image, String cardImage) {
        this.city = city;
        this.state = state;
        this.desc = desc;
        this.funds = funds;
        this.projects = projects;
        this.shares = shares;
        this.image = image;
        this.cardImage = cardImage;
    }

    public place(){}
}
