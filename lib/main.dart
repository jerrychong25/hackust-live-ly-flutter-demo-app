// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/common/theme.dart';
import 'package:provider_shopper/models/cart.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:provider_shopper/screens/cart.dart';
import 'package:provider_shopper/screens/catalog.dart';
import 'package:provider_shopper/screens/login.dart';
import 'package:provider_shopper/screens/register.dart';
import 'package:provider_shopper/screens/home.dart';
import 'package:provider_shopper/screens/usage.dart';
import 'package:provider_shopper/screens/pv_cells.dart';
import 'package:window_size/window_size.dart';

void main() {
  setupWindow();
  runApp(const MyApp());
}

const double windowWidth = 400;
const double windowHeight = 800;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Provider Demo');
    setWindowMinSize(const Size(windowWidth, windowHeight));
    setWindowMaxSize(const Size(windowWidth, windowHeight));
    getCurrentScreen().then((screen) {
      setWindowFrame(Rect.fromCenter(
        center: screen!.frame.center,
        width: windowWidth,
        height: windowHeight,
      ));
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        // In this sample app, CatalogModel never changes, so a simple Provider
        // is sufficient.
        Provider(create: (context) => CatalogModel()),
        // CartModel is implemented as a ChangeNotifier, which calls for the use
        // of ChangeNotifierProvider. Moreover, CartModel depends
        // on CatalogModel, so a ProxyProvider is needed.
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            if (cart == null) throw ArgumentError.notNull('cart');
            cart.catalog = catalog;
            return cart;
          },
        ),
      ],
      child: MaterialApp(
        title: 'Live.ly Demo',
        theme: appTheme,
        home: SplashPage(),
        // initialRoute: '/',
        routes: {
          '/login': (context) => const MyLogin(),
          '/register': (context) => const MyRegister(),
          '/catalog': (context) => const MyCatalog(),
          '/cart': (context) => const MyCart(),
          '/home': (context) => const MyHome(),
          '/usage': (context) => const MyUsage(),
          '/pv_cells': (context) => const MyPVCells(),
        },
      ),
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: MyLogin(),
        // title: new Text(
        //   'Live.ly',
        //   style: new TextStyle(
        //       fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
        // ),
        image: new Image.asset('assets/images/logo.png'),
        photoSize: 100.0,
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.white);
  }
}
