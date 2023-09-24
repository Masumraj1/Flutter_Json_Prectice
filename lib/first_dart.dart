import 'dart:convert';
import 'dart:io';


void main(){
var file=File("assets/first.json");


file.readAsString().then((value)
{
 print(value.runtimeType);

 // var data=jsonEncode(value);
 var data=jsonDecode(value);

 print(data.runtimeType);
 print(data);

 for(var m in data){
  print(m['name']);
  print(m['salary']);
  print(m['married']);


 }
 });



}