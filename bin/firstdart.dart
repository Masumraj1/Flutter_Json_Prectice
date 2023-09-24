import 'dart:convert';
import 'dart:io';

import 'package:assingment2/person.dart';

void main() async {
  final fileName = "assets/first.json";
  var myFile = File(fileName);

  myFile.readAsString().then((String value) {
    var File = jsonDecode(value);

    List<Person> Persons = [];
    for (var map in File) {
      var person = Person(
          name: map['name'],
          Address: map['Address'],
          programmer: map['programmer'],
          year: map['year']);
      Persons.add(person);
    }
    Persons.forEach((p) {
      p.show();
    });
  });
}
