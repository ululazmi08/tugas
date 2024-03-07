import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
import 'package:tugas/constant/assets_constant.dart';
import 'package:tugas/controller/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height / 3.2,
                  // color: Colors.pink,
                ),
                Container(
                  height: Get.height / 4,
                  width: Get.width,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffFE5F5F), Color(0xffFC9842)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          AssetConstant.imgSplashScreen,
                          height: 39,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              AssetConstant.icProfileUser,
                              height: 38,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Good Morning,\nGuest',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 32,
                  left: 32,
                  child: Container(
                    padding: EdgeInsets.only(left: 14),
                    height: Get.height / 8,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffFE5F5F), Color(0xffFFF84B)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 18, right: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Balance Account'),
                              Text('Rp 0'),
                              Text('-'),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.orange),
                            child: Text('Top Up'),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controller.listMenu.mapIndexed((index, element) {
                  return Column(
                    children: [
                      Container(
                        // height: 100,
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Color(0xffFFF84B), Color(0xffFE5F5F)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [Color(0xffFFE3CA), Color(0xffFFFFFF)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: Image.asset(element.icon, height: 40),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        element.label,
                        style: TextStyle(fontSize: 8),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                    children: <int>[1, 2, 3].mapIndexed((index, element) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    height: Get.height / 8,
                    width: 298,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(AssetConstant.imgBanner),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList()),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                          gradient: LinearGradient(
                              colors: [Color(0xffFE5F5F), Color(0xffFC9842)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Image.asset(
                          AssetConstant.icLandmark,
                          height: 20,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Let’s Go with Jakarta Tourist Pass',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'a place not to be missed',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Stack(
              children: [
                Container(
                  height: 142,
                  color: Colors.grey,
                ),
                Container(
                  height: 142,
                  padding: EdgeInsets.only(left: 32),
                  color: Colors.white,
                  child: Image.asset(
                    AssetConstant.imgLandmark,
                    height: 103,
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Container(
            //       height: 142,
            //       padding: EdgeInsets.only(left: 32),
            //       color: Colors.white,
            //       child: Image.asset(
            //         AssetConstant.imgLandmark,
            //         height: 103,
            //       ),
            //     ),
            //     // ListView.builder(
            //     //     itemCount: 3,
            //     //     shrinkWrap: true,
            //     //     itemBuilder: (context, index) {
            //     //       return Column(
            //     //         children: [
            //     //           Container(
            //     //             decoration: BoxDecoration(
            //     //                 borderRadius: BorderRadius.circular(10),
            //     //                 color: Colors.white),
            //     //             child: Column(
            //     //               children: [
            //     //                 Container(
            //     //                   height: 99,
            //     //                   decoration: BoxDecoration(
            //     //                       image: DecorationImage(
            //     //                     image: AssetImage(AssetConstant.imgItem),
            //     //                   )),
            //     //                 )
            //     //               ],
            //     //             ),
            //     //           )
            //     //         ],
            //     //       );
            //     //     })
            //   ],
            // ),
            // Column(
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.white),
            //     ),
            //   ],
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <int>[1,2,3].mapIndexed((index, element) {
                  return Container(
                    width: 99,
                    // padding: EdgeInsets.only(right: 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage(AssetConstant.imgItem),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Ancol Entrance Gate',
                          style: TextStyle(fontSize: 8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.orange),
                              child: Text('Detail'),
                            )
                          ],
                        )
                      ],
                    ),
                  );

                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                          gradient: LinearGradient(
                              colors: [Color(0xffFE5F5F), Color(0xffFC9842)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Image.asset(
                          AssetConstant.icLandmark,
                          height: 20,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Let’s Go with Jakarta Tourist Pass',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'a place not to be missed',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
