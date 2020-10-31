import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/ProfileDropDownButton.dart';
import '../Widgets/ProfileTextField.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String gender;
  String city;
  String nationality;
  String country;
  String language;
  IconButton myIcon = IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.attachment_rounded,
      size: 30,
      color: Colors.grey,
    ),
  );
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.deepOrangeAccent,
          ),
          title: Text(
            ' Edit Profile',
            style: TextStyle(
              fontFamily: 'Segoue',
              color: Colors.deepOrangeAccent,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: FlatButton(
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.sp,
                                  fontFamily: 'Segoue',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              onPressed: () {},
                            ),
                            radius: 50,
                            backgroundImage: AssetImage('images/a.jpg'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffeeeeee),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 650.w,
                            height: 250.h,
                            child: TextFormField(
                              style: TextStyle(
                                  fontFamily: 'Segoue',
                                  fontSize: 50.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              maxLines: null,
                              decoration: InputDecoration(
                                fillColor: Color(0xffeeeeee),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
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
                                hintText: 'Bio',
                                hintStyle: TextStyle(
                                  fontSize: 50.sp,
                                  fontFamily: 'Segoue',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ProfileTextField(hint: 'Enter Your Name'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileDropDownButton(
                            dropdownValue: gender,
                            hint: 'Gender',
                            categoryItems: ['Male', 'Female'],
                            changing: (String val) {
                              setState(() {
                                gender = val;
                              });
                            },
                          ),
                          ProfileDropDownButton(
                            dropdownValue: nationality,
                            hint: 'Nationality',
                            categoryItems: ['Egyptian', 'English'],
                            changing: (String val) {
                              setState(() {
                                nationality = val;
                              });
                            },
                          )
                        ],
                      ),
                      ProfileTextField(hint: 'Email'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfileDropDownButton(
                            dropdownValue: country,
                            hint: 'Country',
                            categoryItems: ['Egypt', 'England'],
                            changing: (String val) {
                              setState(() {
                                country = val;
                              });
                            },
                          ),
                          ProfileDropDownButton(
                            dropdownValue: city,
                            hint: 'City',
                            categoryItems: ['Cairo', 'London'],
                            changing: (String val) {
                              setState(() {
                                city = val;
                              });
                            },
                          )
                        ],
                      ),
                      ProfileTextField(hint: 'Mobile Number'),
                      ProfileTextField(
                        hint: 'Attach your ID for verification',
                        myIcon: myIcon,
                      ),
                      ProfileDropDownButton(
                        dropdownValue: language,
                        hint: 'Language',
                        categoryItems: ['Arabic', 'English'],
                        changing: (String val) {
                          setState(() {
                            language = val;
                          });
                        },
                      ),
                      Container(
                        width: double.infinity,
                        height: 150.h,
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
                              shape: StadiumBorder(),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 120, vertical: 10),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      fontFamily: 'segoue',
                                      fontSize: 60.sp,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
