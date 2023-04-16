package com.example.paatavik.Repository;

import com.example.paatavik.Model.user;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface userInterface extends JpaRepository<user, String> {
    public user findByUsernameAndPassword(String username, String password);
    public user findByUsername(String username);

}
