import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTextField extends StatelessWidget {
  ProfileTextField({@required this.hint, this.myIcon});
  final String hint;
  final IconButton myIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w),
      decoration: BoxDecoration(
        color: Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        style: TextStyle(
            fontFamily: 'Segoue',
            fontSize: 50.sp,
            color: Colors.black,
            fontWeight: FontWeight.w700),
        maxLines: 1,
        decoration: InputDecoration(
          suffixIcon: myIcon,
          fillColor: Color(0xffeeeeee),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: Color(0xffeeeeee),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
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
