import 'package:get/get.dart';
import 'package:tugas/page/home_page.dart';
import 'package:tugas/page/main/main_page.dart';
import 'package:tugas/routes/route_name.dart';

class PagesRoute {
  static final pages = [
    GetPage(name: RouteName.home, page: () =>  HomePage()),
    GetPage(name: RouteName.main, page: () => const MainPage())
  ];
}