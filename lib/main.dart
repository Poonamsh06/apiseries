import 'dart:convert';

import 'package:api_practice/api1.dart';
import 'package:api_practice/family_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FamilyPage());
  }
}
