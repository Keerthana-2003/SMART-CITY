package com.example.paatavik.Service;

import com.example.paatavik.Model.user;
import com.example.paatavik.Repository.userInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@SuppressWarnings("All")
@Service
@Transactional
public class userService {
    @Autowired
    private userInterface ui;

    public user registerUser(user u){return ui.save(u);}
    public user loginUser(String username, String password){ return ui.findByUsernameAndPassword(username, password);}
    public user userData(String username){return ui.findByUsername(username);}
}
