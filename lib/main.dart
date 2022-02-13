// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:flutter2_sdk32_navegador/src/pages/a_pages.dart';
import 'src/providers/url_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UrlProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OneSoil-INIA',
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
      },
    );
  }
}
