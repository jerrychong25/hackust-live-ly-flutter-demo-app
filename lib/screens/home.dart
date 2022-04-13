// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bulb.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      )
      Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 330,
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              Text(
                'Your one app for energy management',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'opportunities and smart',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'eco-living ideas',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/images/start_button.png',
                height: 120,
                width: 120,
              ),
              // ElevatedButton(
              //   child: const Text('Login'),
              //   onPressed: () {
              //     // Navigator.pushReplacementNamed(context, '/catalog');
              //     Navigator.pushReplacementNamed(context, '/catalog');
              //   },
              //   style: ElevatedButton.styleFrom(
              //     primary: Color(0xFFACF13C),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
