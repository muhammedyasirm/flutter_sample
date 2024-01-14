import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/view/controller/add_user_screen_controller.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final addUserCtrl = AddUserScreenController();

  @override
  void initState() {
    Get.put(addUserCtrl);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Add User",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0), // Adjust the value as needed
              child: TextField(
                controller: addUserCtrl.fullNameCtrl.value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Full Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0), // Adjust the value as needed
              child: TextField(
                controller: addUserCtrl.emailCtrl.value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            ElevatedButton(onPressed: () => addUserCtrl.addMethod(), child: Text('Add User',style: TextStyle(color: Colors.black),))
          ],
        ),
      ),
    );
  }
}
