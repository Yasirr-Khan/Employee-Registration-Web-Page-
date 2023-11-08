package com.sample.task.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
