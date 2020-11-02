import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioText extends StatelessWidget {
  final String text;

  const RadioText({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 40.sp,
        fontFamily: 'Segoue',
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
