import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
import 'package:tugas/controller/main/main_controller.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);
  MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      // clipBehavior: Clip.antiAlias,
      notchMargin: 10,
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeTabIndex,
        items: controller.listNavBar
            .mapIndexed(
              (idx, model) => idx == controller.getMiddleNavBarList()
                  ? const BottomNavigationBarItem(
                      icon: SizedBox.shrink(),
                      label: '',
                    )
                  : BottomNavigationBarItem(
                      icon: Image.asset(model.icon, height: 24),
                      label: model.label,
                    ),
              )
            .toList(),
      ),
    );
  }
}
