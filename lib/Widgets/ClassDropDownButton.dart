import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassDropDownButton extends StatelessWidget {
  ClassDropDownButton({this.dropdownValue, this.changing, this.categoryItems});
  final String dropdownValue;
  final Function changing;
  final List<String> categoryItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 25,
      ),
      width: 457.w,
      height: 130.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xffeeeeee),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
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
