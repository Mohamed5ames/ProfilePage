import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dates extends StatelessWidget {
  Dates({this.date});
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        color: Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Center(
          child: Text(
            date,
            style: TextStyle(
              fontSize: 40.sp,
              fontFamily: 'segoue',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
