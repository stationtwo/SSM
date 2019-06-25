package com.itheima.ssm.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptPasswordEncoderUtils {

    public static String getPassword(String password) {

        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String encode = bCryptPasswordEncoder.encode(password);

//        boolean matches = bCryptPasswordEncoder.matches("admin", "$2a$10$bedNHKLjMTwU1uXEHznVT.rLOVb87lccyIk.DzsUSsA9pOspIYZl6");
//        System.out.println(matches);
        return encode;
    }

    public static void main(String[] args) {
        String password = getPassword("user");

        System.out.println(password);
    }
}
