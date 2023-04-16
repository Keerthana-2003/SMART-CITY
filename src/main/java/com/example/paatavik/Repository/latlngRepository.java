package com.example.paatavik.Repository;
import com.example.paatavik.Model.latlng;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface latlngRepository extends JpaRepository<latlng,Integer> {

}
