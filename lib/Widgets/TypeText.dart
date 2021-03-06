import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeText extends StatelessWidget {
  final String text;

  TypeText({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35.h, bottom: 15.h),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Segoue',
          color: Colors.grey,
          fontSize: 40.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
