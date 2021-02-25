import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grinch_app/presentation/controller/home_controller.dart';
import 'package:grinch_app/presentation/page/home_page.dart';

void main() {
  runApp(GrinchApp());
}

class GrinchApp extends StatefulWidget {
  @override
  _GrinchAppState createState() => _GrinchAppState();
}

class _GrinchAppState extends State<GrinchApp> {

  @override
  void initState() {
    Get.put(HomeController());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grinch Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
