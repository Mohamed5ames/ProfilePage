import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilepage/Widgets/TypeText.dart';
import 'package:profilepage/Widgets/ClassTextField.dart';
import 'package:profilepage/Widgets/CategoryButton.dart';
import 'package:profilepage/Widgets/ClassDropDownButton.dart';
import 'package:profilepage/Widgets/Description.dart';
import 'package:profilepage/Widgets/TableText.dart';
import 'package:profilepage/Constants.dart';
import 'package:profilepage/Widgets/newTable.dart';
import 'package:profilepage/Widgets/TableTextField.dart';
import 'package:profilepage/Widgets/Dates.dart';
import 'package:profilepage/Widgets/LocationTextField.dart';
import 'package:profilepage/Widgets/PriceText.dart';
import 'package:profilepage/Widgets/ClassPrice.dart';
import 'package:profilepage/Widgets/RadioText.dart';

class NewClassPage extends StatefulWidget {
  @override
  _NewClassPageState createState() => _NewClassPageState();
}

class _NewClassPageState extends State<NewClassPage> {
  String department = 'Sports';
  String category = 'Boxing';
  bool checkBox = false;
  bool checkBox1 = true;
  int radio = 0;
  void radioCheck(int val) {
    setState(() {
      radio = val;
    });
  }

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
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
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
                    TypeText(
                      text: 'Class Tools',
                    ),
                    NewTable(
                      newRow1Children: [toolName, quantity, addIcon],
                      newRow2Children: [
                        TableText(
                          text: 'BasketBall',
                        ),
                        TableText(
                          text: '12 Ball',
                        ),
                        binIcon,
                      ],
                      newColumnWidths: {
                        0: FlexColumnWidth(4),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(2),
                      },
                    ),
                    TypeText(
                      text: 'Class Pictures & Videos',
                    ),
                    Container(
                      height: 300.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xffeeeeee),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/unnamed.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Select Files',
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  fontSize: 60.sp,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    TypeText(
                      text: 'Class Days',
                    ),
                    ClassTextField(
                      hint: 'Your Dates like 10/10/2020',
                      myIcon: daysIcon,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Dates(
                            date: '10:00 PM',
                          ),
                          Text(
                            'to',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 50.sp,
                                fontFamily: 'Segoue'),
                          ),
                          Dates(
                            date: '10:00 PM',
                          ),
                          addIcon,
                        ],
                      ),
                    ),
                    ClassTextField(
                      hint: 'Your Dates like 10/10/2020',
                      myIcon: daysIcon,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Dates(
                            date: '10:00 PM',
                          ),
                          Text(
                            'to',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 50.sp,
                                fontFamily: 'Segoue'),
                          ),
                          Dates(
                            date: '10:00 PM',
                          ),
                          binIcon,
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: checkBox,
                            onChanged: (val) {
                              setState(() {
                                checkBox = val;
                              });
                            },
                            activeColor: Colors.deepOrangeAccent,
                            checkColor: Colors.white),
                        Text(
                          'Weekly Class',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontFamily: 'Segoue',
                            fontSize: 50.sp,
                          ),
                        )
                      ],
                    ),
                    TypeText(
                      text: 'Class Location',
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LocationTextField(hint: 'Google map address '),
                          PriceText(
                            price: '__',
                            dash: '\$',
                          ),
                          addIcon,
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LocationTextField(hint: 'Currently Location '),
                        PriceText(
                          price: '__',
                          dash: '\$',
                        ),
                        binIcon,
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: checkBox1,
                            onChanged: (val) {
                              setState(() {
                                checkBox1 = val;
                              });
                            },
                            activeColor: Colors.deepOrangeAccent,
                            checkColor: Colors.white),
                        Text(
                          'Trainee can select address',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontFamily: 'Segoue',
                            fontSize: 50.sp,
                          ),
                        )
                      ],
                    ),
                    TypeText(
                      text: 'Available Tools',
                    ),
                    NewTable(
                      newRow1Children: [toolName, quantity, price, addIcon],
                      newRow2Children: [
                        TableText(
                          text: 'Basketball',
                        ),
                        TableText(
                          text: '12 Balls',
                        ),
                        TableText(
                          text: '500\$',
                        ),
                        binIcon,
                      ],
                      newColumnWidths: {
                        0: FlexColumnWidth(4),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(2),
                        3: FlexColumnWidth(1),
                      },
                    ),
                    TypeText(
                      text: 'Required Tools',
                    ),
                    NewTable(
                      newRow1Children: [toolName, quantity, addIcon],
                      newRow2Children: [
                        TableText(
                          text: 'BasketBall',
                        ),
                        TableText(
                          text: '12 Ball',
                        ),
                        binIcon,
                      ],
                      newColumnWidths: {
                        0: FlexColumnWidth(4),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(2),
                      },
                    ),
                    TypeText(
                      text: 'Class Condition',
                    ),
                    NewTable(
                      newRow1Children: [
                        TableTextField(hint: 'Type Here ...'),
                        addIcon
                      ],
                      newRow2Children: [
                        TableText(
                          text: 'Design of the ship is rules ot the ..',
                        ),
                        binIcon,
                      ],
                      newColumnWidths: {
                        0: FlexColumnWidth(3),
                        1: FlexColumnWidth(1),
                      },
                    ),
                    Row(
                      children: [
                        TypeText(
                          text: 'Class Price',
                        ),
                        SizedBox(
                          width: 320.w,
                        ),
                        TypeText(
                          text: 'Tax Percent',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClassPrice(
                          data: '___\$',
                        ),
                        ClassPrice(
                          data: '___%',
                        ),
                      ],
                    ),
                    TypeText(
                      text: 'Reservation Conditions',
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                                activeColor: Colors.deepOrange,
                                value: radio,
                                groupValue: 0,
                                onChanged: radioCheck),
                            RadioText(text: 'Total amount payment'),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: Colors.deepOrange,
                                value: radio,
                                groupValue: 0,
                                onChanged: radioCheck),
                            RadioText(
                              text: 'Available cancelation',
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: Colors.deepOrange,
                                value: radio,
                                groupValue: 0,
                                onChanged: radioCheck),
                            RadioText(
                              text: 'Free Cancelation',
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: Colors.deepOrange,
                                value: radio,
                                groupValue: 0,
                                onChanged: radioCheck),
                            RadioText(text: 'In advance amount'),
                            PriceText(
                              price: ' ___ ',
                              dash: '\$',
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: Colors.deepOrange,
                                value: radio,
                                groupValue: 0,
                                onChanged: radioCheck),
                            RadioText(text: 'Cancelation Penality'),
                            PriceText(
                              price: ' ___ ',
                              dash: '%',
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: Colors.deepOrange,
                                value: radio,
                                groupValue: 0,
                                onChanged: radioCheck),
                            RadioText(
                              text: 'Cancelation deadline',
                            ),
                            PriceText(
                              price: ' ___ ',
                              dash: 'days',
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 190.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: FlatButton(
                                height: 120.h,
                                shape: StadiumBorder(),
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 10),
                                  child: Text(
                                    'Create New Class',
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: 'segoue',
                                        fontSize: 40.sp,
                                        color: Colors.white),
                                  ),
                                ),
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
