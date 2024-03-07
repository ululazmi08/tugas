import 'package:get/get.dart';
import 'package:tugas/constant/assets_constant.dart';
import 'package:tugas/model/list_bottom_nav_bar.dart';

class HomeController extends GetxController{
  List<ListBottomNavBarModel> listMenu = [
    ListBottomNavBarModel(label: 'Explore Jakarta', icon: AssetConstant.icMap),
    ListBottomNavBarModel(label: 'Top Up JakCard', icon: AssetConstant.icWallet),
    ListBottomNavBarModel(label: 'JakCard Balance', icon: AssetConstant.icJakCard),
    ListBottomNavBarModel(label: 'Event ', icon: AssetConstant.icEvent),
  ];
}