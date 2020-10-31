import 'package:flutter/material.dart';
import 'package:profilepage/Screens/Class.dart';
import 'Screens/Profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: NewClassPage(),
    debugShowCheckedModeBanner: false,
  ));
}
// void main() => runApp(
//       MaterialApp(
//         home: DevicePreview(
//           builder: (context) => ProfilePage(),
//         ),
//       ),
//     );
