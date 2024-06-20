import 'dart:convert';

import 'package:api_practice/models/family.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FamilyPage extends StatelessWidget {
  Future<List<Family?>> loadAsset() async {
    var loadData = await rootBundle.loadString("assets/family.json");
    List<dynamic> response = await json.decode(loadData);
    List<Family> family =
        response.map((data) => Family.fromJson(data)).toList();
    return family;
  }

  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: loadAsset(),
          builder: (c, AsyncSnapshot<List<Family?>> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Card(
                    elevation: 5,
                    color: Colors.blue[50],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Name: ${snapshot.data![index]!.name}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Relation: ${snapshot.data![index]!.relation}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Education: ${snapshot.data![index]!.education}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Age: ${snapshot.data![index]!.age}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Phone: ${snapshot.data![index]!.phone}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
