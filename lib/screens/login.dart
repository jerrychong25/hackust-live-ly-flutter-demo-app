// Copyright 2022 Live.ly team.
// All rights reserved.

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Login Success!', toastLength: Toast.LENGTH_LONG);
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: Ink(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    gradient: new LinearGradient(
                      colors: [
                        Colors.green[300] as Color,
                        Colors.green[500] as Color
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  child: new Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: Ink(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    gradient: new LinearGradient(
                      colors: [
                        Colors.green[300] as Color,
                        Colors.green[500] as Color
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  child: new Text('Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
