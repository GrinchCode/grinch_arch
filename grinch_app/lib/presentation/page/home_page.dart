import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grinch_app/presentation/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = HomeController.find;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grinch Code'),
      ),
      body: Center(
        child: Obx(() {
          final version = controller.version.value;

          return Text('$version');
        }),
      ),
    );
  }
}
