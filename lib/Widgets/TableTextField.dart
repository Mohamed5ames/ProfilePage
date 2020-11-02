import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableTextField extends StatelessWidget {
  TableTextField({@required this.hint, this.myIcon});
  final String hint;
  final IconButton myIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        style: TextStyle(
            fontFamily: 'Segoue',
            fontSize: 40.sp,
            color: Colors.black,
            fontWeight: FontWeight.w700),
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 60.w, top: 85.h),
          suffixIcon: myIcon,
          fillColor: Color(0xffeeeeee),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            borderSide: BorderSide(
              color: Color(0xffeeeeee),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            borderSide: BorderSide(
              color: Color(0xffeeeeee),
            ),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 40.sp,
            fontFamily: 'Segoue',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
