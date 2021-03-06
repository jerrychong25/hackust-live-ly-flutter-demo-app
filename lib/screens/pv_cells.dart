// Copyright 2022 Live.ly team.
// All rights reserved.

import 'package:flutter/material.dart';

class MyPVCells extends StatelessWidget {
  const MyPVCells({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: SizedBox.expand(
          // -> 01
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/app_background.png'),
              fit: BoxFit.cover, // -> 02
            )),
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'PV Cells',
                    style: TextStyle(
                      fontSize: 30.0,
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
                    'assets/images/pv_cell.png',
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/behind_device.png',
                    height: 120,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Total Energy Generated',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'assets/images/30kwh.png',
                    height: 40,
                  ),
                  const SizedBox(
                    height: 20,
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                  'assets/images/capacity_box.png',
                                  height: 200),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                  'assets/images/co2_reduction_box.png',
                                  height: 200),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                  'assets/images/total_yield_box.png',
                                  height: 180),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  SwitchButton(),
                ],
              ),
            ),
          ),
        ),
      ),
      onWillPop: () async {
        final value = await Navigator.pushReplacementNamed(context, '/usage');
        if (value != null) {
          return Future.value(true);
        } else {
          return Future.value(false);
        }
      },
    );
  }
}

class SwitchButton extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = true;
  var textValue = 'Activated';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Activated';
      });
      print('Switch Button is ON - Activated');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Disabled';
      });
      print('Switch Button is OFF - Disabled');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Transform.scale(
              scale: 2,
              child: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.white,
                activeTrackColor: Colors.greenAccent,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.redAccent,
              )),
          SizedBox(width: 20),
          Text(
            '$textValue',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          )
        ]);
  }
}
