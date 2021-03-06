package com.sloginurlshort.exception;

import org.springframework.security.core.AuthenticationException;

@SuppressWarnings("serial")
public class UserAlreadyExistAuthenticationException extends AuthenticationException {

    public UserAlreadyExistAuthenticationException(final String msg) {
        super(msg);
    }

}
