import 'package:api_dart/model/person.dart';
import 'package:api_dart/model/user.dart';
import 'package:dio/dio.dart';

const String api = "https://reqres.in/api";

Future<String> createUser({required User user}) async {
  try {
    var response = await Dio().post('$api/users', data: user.toJson());
    print(response.data);
    return "Utilisateur enregistré";
  } catch (e) {
    throw Error();
  }
}
