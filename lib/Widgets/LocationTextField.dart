import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationTextField extends StatelessWidget {
  LocationTextField({@required this.hint, this.myIcon});
  final String hint;
  final IconButton myIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750.w,
      decoration: BoxDecoration(
        color: Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        style: TextStyle(
            fontFamily: 'Segoue',
            fontSize: 50.sp,
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
              color: Colors.grey,
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
            fontSize: 50.sp,
            fontFamily: 'Segoue',
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
