package com.amran.dynamic.multitenant;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;

@SpringBootTest
public class SecurityTest {

  @Autowired
  AuthenticationManager authenticationManager;

  @Test
  public void authenticate() {
    Object roles;
    authenticationManager.authenticate(new UsernamePasswordAuthenticationToken("user01", "111111"));
  }
}
