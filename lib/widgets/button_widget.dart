import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key,this.onTap,required this.text,this.icon}) : super(key: key);
  final GestureTapCallback? onTap;
  final String  text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)),
          width: 120.w,
          height: 50.h,
          child:   Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon),
              Text(
                text,
                style:  TextStyle(fontSize: 20.sp, color: Colors.black),
              ),
            ],
          )),
    );
  }
}
