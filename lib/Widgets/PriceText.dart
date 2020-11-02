import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceText extends StatelessWidget {
  final String price;
  final String dash;

  const PriceText({this.price, this.dash});
  @override
  Widget build(BuildContext context) {
    return Text(
      '$price$dash',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.deepOrange,
        fontSize: 50.sp,
      ),
    );
  }
}
