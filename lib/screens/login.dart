// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              // Text(
              //   'Welcome',
              //   // style: Theme.of(context).textTheme.headline1,
              //   // style: const TextStyle(color: Colors.white),
              //   style: TextStyle(
              //     fontSize: 30.0,
              //     color: Colors.white,
              //   ),
              // ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Colors.grey),   
                  ),  
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                style: TextStyle(color: Color(0xFFACF13C)),
                cursorColor: Colors.yellow,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Colors.grey),   
                  ),  
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                style: TextStyle(color: Color(0xFFACF13C)),
                cursorColor: Colors.yellow,
                obscureText: true,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/catalog');
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFACF13C),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text('Register'),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/cart');
                  Navigator.pushReplacementNamed(context, '/cart');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFACF13C),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
