import 'package:api_dart/model/person.dart';
import 'package:dio/dio.dart';

const String api = "https://api.agify.io";
Future<Person> getPerson({required String name}) async {
  try {
    var response = await Dio().get(api, queryParameters: {"name": name});
    return Person.fromJson(response.data);
  } catch (e) {
    throw Error();
  }
}
