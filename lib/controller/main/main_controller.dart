import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tugas/constant/assets_constant.dart';
import 'package:tugas/model/list_bottom_nav_bar.dart';
import 'package:tugas/page/home_page.dart';
import 'package:tugas/page/profile_page.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  List<Widget> listPages = [
    HomePage(),
    const SizedBox(),
    ProfilePage()
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }

  List<ListBottomNavBarModel> listNavBar = [
    ListBottomNavBarModel(
      label: 'Beranda',
      icon: AssetConstant.icHome,
    ),
    ListBottomNavBarModel(
      label: '',
      icon: AssetConstant.icHome,
    ),
    ListBottomNavBarModel(
      label: 'Chat',
      icon: AssetConstant.icProfile,
    ),
  ];

  int getMiddleNavBarList() {
    return ((listNavBar.length - 1) / 2).floor();
  }

}