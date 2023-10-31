class MyModel {
  final int id;
  final String name;
  final String description;

  MyModel({required this.id, required this.name, required this.description});

  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}
