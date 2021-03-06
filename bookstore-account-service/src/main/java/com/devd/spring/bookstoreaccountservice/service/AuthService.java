package com.devd.spring.bookstoreaccountservice.service;

import com.devd.spring.bookstoreaccountservice.web.CreateOAuthClientRequest;
import com.devd.spring.bookstoreaccountservice.web.CreateOAuthClientResponse;
import com.devd.spring.bookstoreaccountservice.web.CreateUserResponse;
import com.devd.spring.bookstoreaccountservice.web.SignInRequest;
import com.devd.spring.bookstoreaccountservice.web.SignUpRequest;

public interface AuthService {

  CreateOAuthClientResponse createOAuthClient(CreateOAuthClientRequest createOAuthClientRequest);

  CreateUserResponse registerUser(SignUpRequest signUpRequest);
}
