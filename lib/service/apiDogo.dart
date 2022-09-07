import 'package:api_dart/model/dog.dart';
import 'package:dio/dio.dart';

const String api = "https://dog.ceo/api";

void getDogo() async {
  try {
    var response = await Dio().get('$api/breeds/image/random');
    Dog dog = Dog.fromJson(response.data);
    print(dog.toJson());
  } catch (e) {
    print(e);
  }
}

void getDogoByName({required String name}) async {
  try {
    var response = await Dio().get('$api/breed/$name/images/random');
    print(response.data);
  } catch (e) {
    print(e);
  }
}
