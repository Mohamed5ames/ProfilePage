import 'package:flutter/material.dart';
import 'Widgets/TableText.dart';

IconButton addIcon = IconButton(
  onPressed: () {},
  icon: Icon(
    Icons.add_circle_rounded,
    size: 30,
    color: Color(0xff616161),
  ),
);
IconButton binIcon = IconButton(
  onPressed: () {},
  icon: Icon(
    Icons.delete,
    size: 30,
    color: Color(0xff616161),
  ),
);
IconButton daysIcon = IconButton(
    icon: Icon(
      Icons.calendar_today_rounded,
      size: 30,
      color: Colors.deepOrangeAccent,
    ),
    onPressed: () {});
Widget toolName = TableText(
  text: 'Tool Name',
);
Widget quantity = TableText(
  text: 'Quantity',
);
Widget price = TableText(
  text: 'Price',
);
