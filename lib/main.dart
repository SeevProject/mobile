// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:cv/Change_info.dart';
import 'package:cv/Finished_creating.dart';
import 'package:cv/Home_Page.dart';
import 'package:cv/LoginPage.dart';
import 'package:cv/upload_picture.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CV Generator',
        theme: ThemeData(primarySwatch: null),
        // darkTheme: ThemeData.dark(),
        home: const UploadPicture());
  }
}
