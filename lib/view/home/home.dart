import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/view/home/add_user_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(AddUserScreen()),
            icon: Icon(Icons.add),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "User Management",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
