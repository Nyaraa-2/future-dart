class Dog {
  final String message;
  final String status;

  Dog(this.message, this.status);
//Map to get
  Dog.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        status = json['status'];
//Map to post
  Map<String, dynamic> toJson() => {
        'message': message,
        'status': status,
      };
}
