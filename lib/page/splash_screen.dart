import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/constant/assets_constant.dart';
import 'package:tugas/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: Get.width,
                  height: Get.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffFC9842), Color(0xffFF4747)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                ),
                Image.asset(AssetConstant.imgSplashScreen,
                    height: Get.height / 9),
                Positioned(
                  bottom: 20,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(AssetConstant.imgOjk, height: 15.47),
                          const SizedBox(width: 16),
                          Image.asset(AssetConstant.imgLps, height: 15.47),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'powered by Bank DKI\n2023',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
