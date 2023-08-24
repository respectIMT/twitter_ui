// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class drawer_list extends StatelessWidget {
  const drawer_list({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 22.h,
          ),
          SizedBox(
            width: 18.w,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
