import 'package:get/get.dart';
import 'package:tugas/routes/route_name.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    start();
    super.onInit();
  }

  void start() {
    Future.delayed(const Duration(milliseconds: 2000), () async {
        Get.offAllNamed(RouteName.main);
      },
    );
  }
}
