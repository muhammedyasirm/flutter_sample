import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample_project/domain/model/user_model.dart';
import 'package:sample_project/domain/repository/user_management_repo.dart';
// import 'package:sample_project/domain/repository/user_repo.dart';

class AddUserScreenController extends GetxController {
  var fullNameCtrl = TextEditingController().obs;
  var emailCtrl = TextEditingController().obs;

  var userRepo = UserManagementRepo();

  addMethod() {
    var model = UserManagementModel(fullNameCtrl.value.text, emailCtrl.value.text);
    userRepo.addUser(model);
    print('Got user => ${fullNameCtrl.value.text} ${emailCtrl.value.text}');
  }
}