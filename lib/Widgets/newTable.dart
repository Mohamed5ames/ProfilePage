import 'package:flutter/material.dart';
import 'TableText.dart';

class NewTable extends StatelessWidget {
  final List<Widget> newRow1Children;
  final List<Widget> newRow2Children;
  final Map<int, TableColumnWidth> /*?*/ newColumnWidths;
  const NewTable(
      {this.newRow1Children, this.newColumnWidths, this.newRow2Children});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Color(0xffeeeeee),
      ),
      child: Table(
        columnWidths: newColumnWidths,
        border: TableBorder.symmetric(
            inside: BorderSide(
          width: 1,
          color: Colors.grey,
        )),
        children: [
          TableRow(
            children: newRow1Children,
          ),
          TableRow(
            children: newRow2Children,
          ),
        ],
      ),
    );
  }
}
