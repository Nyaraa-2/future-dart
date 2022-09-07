class User {
  final String job;
  final String name;

  User(this.job, this.name);

  //Map to get
  User.fromJson(Map<String, dynamic> json)
      : job = json['job'],
        name = json['name'];
//Map to post
  Map<String, dynamic> toJson() => {
        'job': job,
        'name': name,
      };
}
