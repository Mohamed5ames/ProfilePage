import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDropDownButton extends StatelessWidget {
  ProfileDropDownButton(
      {this.dropdownValue, this.changing, this.categoryItems, this.hint});
  final String dropdownValue;
  final String hint;
  final Function changing;
  final List<String> categoryItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 25,
      ),
      width: 457.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xffeeeeee),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(
            hint,
            style: TextStyle(
              fontSize: 50.sp,
              fontFamily: 'Segoue',
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          value: dropdownValue,
          isExpanded: true,
          iconSize: 100.sp,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 65.sp,
            color: Colors.black,
          ),
          onChanged: changing,
          items: categoryItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
