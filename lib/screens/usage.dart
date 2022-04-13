// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class MyUsage extends StatelessWidget {
  const MyUsage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     automaticallyImplyLeading: true,
      //     //`true` if you want Flutter to automatically add Back Button when needed,
      //     //or `false` if you want to force your own back button every where
      //     title: Text('Usage Page'),
      //     backgroundColor: Colors.black,
      //     foregroundColor: Colors.white,
      //     leading: IconButton(icon:Icon(Icons.arrow_back),
      //       onPressed:() => Navigator.pushReplacementNamed(context, '/home'),
      //     )
      // ),
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
              // Text(
              //   'Home',
              //   style: TextStyle(
              //     fontSize: 22.0,
              //     color: Colors.white,
              //   ),
              //   textAlign: TextAlign.left,
              // ),
              // Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //                   // Expanded(
              //                   //   child: FittedBox(
              //                   //     fit: BoxFit.contain, // otherwise the logo will be tiny
              //                   //     child: 
              //                   //       Image.asset(
              //                   //         'assets/images/home.png',
              //                   //         height: 50,
              //                   //       )
              //                   //   ),
              //                   // ),
              //                   Expanded(
              //                       child: Text(
              //                         'Home', 
              //                         style: TextStyle(
              //                           fontSize: 22.0,
              //                           color: Colors.white,
              //                         ),
              //                       ),
              //                   ),
              //                 ],
                  
              // ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Total Energy Usage',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/energy_meter.png',
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Devices and Appliances',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    // color: Colors.teal,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/pv_cells');
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/pv_cell_icon.png',
                            height: 200
                          ),
                        ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/cart');
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/solar_blinds_icon.png',
                            height: 85
                          ),
                        ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/cart');
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/smart_light_icon.png',
                            height: 85
                          ),
                        ),
                    ),
                  ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/cart');
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/heating_icon.png',
                            height: 85
                          ),
                        ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/cart');
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/eco_sockets_icon.png',
                            height: 85
                          ),
                        ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/cart');
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/fridge_and_freezer_icon.png',
                            height: 85
                          ),
                        ),
                    ),
                  ),
                ]
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
