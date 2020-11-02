import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableText extends StatelessWidget {
  final String text;

  TableText({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35.h, bottom: 15.h, left: 60.w),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Segoue',
          color: Colors.black,
          fontSize: 40.sp,
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
      ),
    );
  }
}
