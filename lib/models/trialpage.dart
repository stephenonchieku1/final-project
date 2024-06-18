import 'package:flutter/material.dart';

class TableCellSettings extends StatelessWidget {
  final String title;
  const TableCellSettings({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: TextStyle(
            color: Colors.grey[700],
          )),
          Padding(padding:  const EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[700],
            size: 14,
          )
          )          
        ],
      ),
      ),
    );
  }
}
