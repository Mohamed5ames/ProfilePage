import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilepage/Widgets/TypeText.dart';
import 'package:profilepage/Widgets/ClassTextField.dart';
import 'package:profilepage/Widgets/CategoryButton.dart';
import 'package:profilepage/Widgets/ClassDropDownButton.dart';
import 'package:profilepage/Widgets/Description.dart';

class NewClassPage extends StatefulWidget {
  @override
  _NewClassPageState createState() => _NewClassPageState();
}

class _NewClassPageState extends State<NewClassPage> {
  String department = 'Sports';
  String category = 'Boxing';
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.deepOrangeAccent,
          ),
          title: Text(
            'New Class',
            style: TextStyle(
              fontFamily: 'Segoue',
              color: Colors.deepOrangeAccent,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 6,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TypeText(
                        text: 'Class name in English',
                      ),
                      ClassTextField(hint: 'Class Name'),
                      TypeText(
                        text: 'Class name in Arabic',
                      ),
                      ClassTextField(hint: 'Class Name'),
                      TypeText(
                        text: 'Category Type',
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryButton(
                            buttonColor: Color(0xffeeeeee),
                            labelColor: Colors.black,
                            buttonText: 'Single',
                          ),
                          CategoryButton(
                            buttonColor: Color(0xffeeeeee),
                            labelColor: Colors.black,
                            buttonText: 'Group',
                          ),
                          CategoryButton(
                            buttonColor: Color(0xffeeeeee),
                            labelColor: Colors.black,
                            buttonText: 'Children',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TypeText(
                            text: 'Select Department',
                          ),
                          SizedBox(
                            width: 170.w,
                          ),
                          TypeText(
                            text: 'Select Category',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClassDropDownButton(
                            dropdownValue: department,
                            categoryItems: ['Sports', 'Running'],
                            changing: (String val) {
                              setState(() {
                                department = val;
                              });
                            },
                          ),
                          ClassDropDownButton(
                            dropdownValue: category,
                            categoryItems: ['Boxing', 'Other'],
                            changing: (String val) {
                              setState(() {
                                category = val;
                              });
                            },
                          )
                        ],
                      ),
                      DescriptionTextField(hint: 'Class Description'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
