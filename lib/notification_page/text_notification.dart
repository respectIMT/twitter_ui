// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationText extends StatelessWidget {
  const NotificationText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 10),
              height: 20.h,
              width: 20.w,
              child: Image.asset("assets/icons/x.png"),
            ),
            Container(
              width: 280.w,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                text,
                style: GoogleFonts.archivo(
                    textStyle: TextStyle(
                        fontSize: 15.sp, color: Colors.grey.shade700)),
              ),
            ),
          ],
        ),
        Container(
          height: 0.5,
          color: Colors.grey.shade400,
          margin: EdgeInsets.symmetric(vertical: 5),
        )
      ],
    );
  }
}
