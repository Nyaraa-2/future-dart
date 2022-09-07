import 'package:dio/dio.dart';

const String api = "https://random-word-api.herokuapp.com/word";

Future<String> getWord() async {
  try {
    var response = await Dio().get(api);
    return response.data[0];
  } catch (e) {
    print(e);
    return "ERROR";
  }
}

Future<List<String>> getTenWords({required int number, int length = 2}) async {
  try {
    var response = await Dio()
        .get(api, queryParameters: {"length": length, "number": number});
    return List<String>.from(response.data);
  } catch (e) {
    print(e);
    return [];
  }
}
