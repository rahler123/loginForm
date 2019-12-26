package com.techehub.loginForm;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}