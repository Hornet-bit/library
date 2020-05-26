package com.example.lib.repos;

import com.example.lib.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo  extends JpaRepository<User,Long> {
    User findByUsername(String username);
    User deleteByUsername(String username);
    User findByActivationCode(String code);
}
