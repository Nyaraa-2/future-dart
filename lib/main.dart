import 'dart:math';

import 'package:api_dart/model/person.dart';
import 'package:api_dart/model/user.dart';
import 'package:api_dart/service/agifyService.dart';
import 'package:api_dart/service/apiDogo.dart';
import 'package:api_dart/service/apiRandomWord.dart';
import 'package:api_dart/service/reqresService.dart';

Future<void> main(List<String> args) async {
  User user = User("leader", "morpheus");
  userService(user);
}

void userService(User user) async {
  await createUser(user: user);
}

void personService() async {
  Person p = await getPerson(name: "mickeal");
  print(p.toJson());
}

void dogoService() {
  getDogo();
  getDogoByName(name: "dingo");
}

Future<void> randomService() async {
  print(await getWord());
  List<String> words = await getTenWords(number: 10, length: 10);
  int i = 1;
  words.forEach((element) {
    print('$i : $element');
    i++;
  });
}
