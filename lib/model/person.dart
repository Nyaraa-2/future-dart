class Person {
  final String name;
  final int age;
  final int count;

  Person(this.name, this.age, this.count);

  //Map to get
  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'],
        count = json['count'];
//Map to post
  Map<String, dynamic> toJson() => {'name': name, 'age': age, 'count': count};
}
