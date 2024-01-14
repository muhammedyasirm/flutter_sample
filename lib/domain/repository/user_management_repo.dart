import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sample_project/domain/model/user_model.dart';

class UserManagementRepo {
  final String _filePath = 'assets/user.json';


  List<UserManagementModel> getUsers() {
    try {
      final file = File(_filePath);
      final contents = file.readAsStringSync();
      final List<dynamic> jsonList = json.decode(contents);

      return jsonList.map((json) => UserManagementModel.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> addUser(UserManagementModel user) async {
    try {
      final String response = await rootBundle.loadString(_filePath);
      print("Response => ${response}");
      print("Inside addUser");
      print("From addUser=> ${user.toJson()}");
      final file = File(_filePath);
      final contents = file.readAsStringSync();
      List<dynamic> jsonList = json.decode(contents);

      jsonList.add(user.toJson());

      print("From addUser json=> ${jsonList.toString()}");

      file.writeAsStringSync(json.encode(jsonList));
    } catch (e) {
      // Handle error
      print("Error => ${e}");
    }
  }

  Future<Map<String, dynamic>> loadJson() async {
    String jsonString = await rootBundle.loadString('assets/user.json');
    return json.decode(jsonString);
  }
}