import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Model_Class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Future<List<MyModel>> loadAndParseJson() async {
    // Load JSON data from the assets folder
    String jsonString = await rootBundle.loadString('novemberassets/november.json');

    // Parse the JSON string into a list of MyModel objects
    List<dynamic> jsonData = json.decode(jsonString);
    List<MyModel> myModels = jsonData.map((json) => MyModel.fromJson(json)).toList();

    return myModels;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Local JSON Example'),
        ),
        body: FutureBuilder(
          future: loadAndParseJson(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              List<MyModel> data = snapshot.data as List<MyModel>;

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index].name),
                    subtitle: Text(data[index].description),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
