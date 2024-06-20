// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:api_practice/models/student.dart';

class Api1 extends StatelessWidget {
  Future<Student?> loadAsset() async {
    var loadJson = await rootBundle.loadString("assets/student.json");
    Map<String, dynamic> response = await json.decode(loadJson);
    Student s = Student.fromJson(response);

    return s;
  }

  Api1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // loadAsset();
    return Scaffold(
        body: FutureBuilder(
      future: loadAsset(),
      builder: (context, AsyncSnapshot<Student?> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Column(
          children: [
            Text(
              '${snapshot.data!.name}',
              style: TextStyle(fontSize: 30),
            )
          ],
        );
      },
    ));
  }
}
