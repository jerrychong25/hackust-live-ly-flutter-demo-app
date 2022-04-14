// Copyright 2022 Live.ly team.
// All rights reserved.

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
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
                // TextFormField(
                //   decoration: const InputDecoration(
                //     hintText: 'Username',
                //     hintStyle: TextStyle(color: Colors.grey),
                //     contentPadding: EdgeInsets.symmetric(vertical: 15),
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.grey),
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.grey),
                //     ),
                //     border: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.grey),
                //     ),
                //   ),
                //   style: TextStyle(color: Color(0xFFACF13C)),
                //   cursorColor: Colors.yellow,
                // ),
                // TextFormField(
                //   decoration: const InputDecoration(
                //     hintText: 'Password',
                //     hintStyle: TextStyle(color: Colors.grey),
                //     contentPadding: EdgeInsets.symmetric(vertical: 15),
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.grey),
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.grey),
                //     ),
                //     border: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.grey),
                //     ),
                //   ),
                //   style: TextStyle(color: Color(0xFFACF13C)),
                //   cursorColor: Colors.yellow,
                //   obscureText: true,
                // ),
                TextUsernamePasswordSubmitForm(
                    onSubmit: (value) => print(value)),
                // const SizedBox(
                //   height: 40,
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     Fluttertoast.showToast(
                //         msg: 'Login Success!', toastLength: Toast.LENGTH_LONG);
                //     Navigator.pushReplacementNamed(context, '/home');
                //   },
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all(Colors.black),
                //   ),
                //   child: Ink(
                //     decoration: new BoxDecoration(
                //       borderRadius: BorderRadius.circular(60),
                //       gradient: new LinearGradient(
                //         colors: [
                //           Colors.green[300] as Color,
                //           Colors.green[500] as Color
                //         ],
                //         begin: Alignment.topLeft,
                //         end: Alignment.bottomRight,
                //       ),
                //     ),
                //     padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                //     child: new Text('Login',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 17.0,
                //         )),
                //   ),
                // ),
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
      ),
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (contex) {
              return AlertDialog(
                  title: const Text('Alert'),
                  content: const Text('Do you want to exit this app?'),
                  actions: [
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('No'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('Exit'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                      ),
                    ),
                  ]);
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
    );
  }
}

class TextUsernamePasswordSubmitForm extends StatefulWidget {
  const TextUsernamePasswordSubmitForm({Key? key, required this.onSubmit})
      : super(key: key);
  final ValueChanged<String> onSubmit;

  @override
  State createState() => _TextUsernamePasswordSubmitFormState();
}

class _TextUsernamePasswordSubmitFormState
    extends State<TextUsernamePasswordSubmitForm> {
  // declare a GlobalKey
  final _formKey = GlobalKey<FormState>();
  bool _submitted = false;
  String _username = '';
  String _password = '';

  void _submit() {
    setState(() => _submitted = true);
    if (_formKey.currentState!.validate()) {
      widget.onSubmit(_username);
      widget.onSubmit(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // SizedBox(
          //   height: 80,
          //   child: TextFormField(
          //     decoration: const InputDecoration(
          //       hintText: 'Password',
          //     ),
          //     autovalidateMode: _submitted
          //         ? AutovalidateMode.onUserInteraction
          //         : AutovalidateMode.disabled,
          //     // The validator receives the text that the user has entered.
          //     validator: (text) {
          //       if (text == null || text.isEmpty) {
          //         return 'Can\'t be empty';
          //       }
          //       if (text.length < 4) {
          //         return 'Too short';
          //       }
          //       return null;
          //     },
          //     onChanged: (text) => setState(() => _password = text),
          //   ),
          // ),
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
            autovalidateMode: _submitted
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            // The validator receives the text that the user has entered.
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Can\'t be empty';
              }
              if (text.length < 4) {
                return 'Too short';
              }
              return null;
            },
            onChanged: (text) => setState(() => _username = text),
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
            autovalidateMode: _submitted
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            // The validator receives the text that the user has entered.
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Can\'t be empty';
              }
              if (text.length < 4) {
                return 'Too short';
              }
              return null;
            },
            onChanged: (text) => setState(() => _password = text),
          ),
          // SizedBox(
          //   height: 40,1
          //   child: ElevatedButton(
          //     onPressed: _name.isNotEmpty ? _submit : null,
          //     child: Text(
          //       'Submit',
          //       style: Theme.of(context)
          //           .textTheme
          //           .headline6!
          //           .copyWith(color: Colors.white),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              if (_username.isNotEmpty && _password.isNotEmpty) {
                _submit;
                Fluttertoast.showToast(
                    msg: 'Login Success!', toastLength: Toast.LENGTH_LONG);
                Navigator.pushReplacementNamed(context, '/home');
              } else {
                if (!_username.isNotEmpty && !_password.isNotEmpty) {
                  print("Empty Username & Password!");
                  Fluttertoast.showToast(
                      msg: 'Please enter username and password!',
                      toastLength: Toast.LENGTH_LONG);
                } else if (!_username.isNotEmpty) {
                  print("Empty Username!");
                  Fluttertoast.showToast(
                      msg: 'Please enter username!',
                      toastLength: Toast.LENGTH_LONG);
                } else if (!_password.isNotEmpty) {
                  print("Empty Password!");
                  Fluttertoast.showToast(
                      msg: 'Please enter password!',
                      toastLength: Toast.LENGTH_LONG);
                }
              }
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
        ],
      ),
    );
  }
}
