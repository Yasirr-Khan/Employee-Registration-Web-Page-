package com.sample.task.service;

import com.sample.task.entity.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}