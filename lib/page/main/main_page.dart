import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/controller/main/main_controller.dart';
import 'package:tugas/page/main/widget/bottom_nav_bar.dart';
import 'package:tugas/page/main/widget/qris_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
          ()=> controller.listPages.elementAt(controller.currentIndex.value)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: QrisButton(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
