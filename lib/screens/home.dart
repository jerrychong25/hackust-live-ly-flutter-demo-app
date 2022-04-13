// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand( // -> 01
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/app_background.png'),
              fit: BoxFit.cover,    // -> 02
            )
          ),
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.black,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Your one app for energy management',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'opportunities and smart',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'eco-living ideas',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              // Image.asset(
              //   'assets/images/start_button.png',
              //   height: 150,
              //   width: 150,
              //   onPressed: () {
              //     // Navigator.push(
              //     //   context,
              //     //   MaterialPageRoute(builder: (context) => SecondRoute()),
              //     // );
              //     Navigator.pushReplacementNamed(context, '/');
              //   }
              // ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/usage');
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/images/start_button.png',
                        width: 150, height: 150),
                  ),
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
      ),
    );
  }
}
