class Persion {
  final String name;
  final String salary;
  final int married;

  const Persion(
      {required this.name, required this.salary, required this.married});

  factory Persion.fromMap(Map<String, dynamic> json) {
    return Persion(
      name: json['title'],
      salary: json['author'],
      married: json['price'],
    );
  }

  void show() {
    print('$name  $salary $married');
  }
}