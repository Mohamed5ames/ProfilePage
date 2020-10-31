import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryButton extends StatefulWidget {
  CategoryButton({
    this.buttonColor,
    this.buttonText,
    this.labelColor,
  });
  Color buttonColor;
  final String buttonText;
  Color labelColor;
  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey),
      ),
      child: FlatButton(
        onPressed: () {
          setState(() {
            if (widget.buttonColor == Color(0xffeeeeee)) {
              widget.buttonColor = Colors.deepOrangeAccent;
              widget.labelColor = Colors.white;
            } else {
              widget.buttonColor = Color(0xffeeeeee);
              widget.labelColor = Colors.black;
            }
          });
        },
        shape: StadiumBorder(),
        color: widget.buttonColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 35.h),
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.labelColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'Segoue',
              fontSize: 45.sp,
            ),
          ),
        ),
      ),
    );
  }
}
