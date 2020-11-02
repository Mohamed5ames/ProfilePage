import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassPrice extends StatelessWidget {
  ClassPrice({this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450.w,
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
            data,
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 50.sp,
              fontFamily: 'segoue',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
