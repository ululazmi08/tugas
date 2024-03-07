import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/constant/assets_constant.dart';

class QrisButton extends StatelessWidget {
  const QrisButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
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
        // height: 64,
        // width: 64,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
              colors: [Color(0xffFF4747), Color(0xffFC9842)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Image.asset(
          AssetConstant.imgQris,
          height: 16,
        ),
      ),
    );
  }
}
