package com.sloginurlshort.service;

import org.springframework.security.core.userdetails.UserDetails;

import com.sloginurlshort.dto.UserRegistrationForm;
import com.sloginurlshort.exception.UserAlreadyExistAuthenticationException;

public interface UserService {

    public UserDetails registerNewUser(UserRegistrationForm UserRegistrationForm)throws UserAlreadyExistAuthenticationException;

}
