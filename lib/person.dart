class Person {
  final String name;
  final String Address;
  final bool programmer;
  final int year;

  const Person(
      {required this.name,
      required this.Address,
      required this.programmer,
      required this.year});

  factory Person.fromMap(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      Address: json['Address'],
      programmer: json['programmer'],
      year: json['year'],
    );
  }

  void show() {
    print(
        "Name:$name,\n Address:$Address, \n programmer:$programmer,\n year:$year");
    print('');
  }
}
