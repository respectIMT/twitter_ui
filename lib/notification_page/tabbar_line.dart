// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarLine extends StatelessWidget {
  const TabbarLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        height: 40.h,
        constraints: BoxConstraints.expand(height: 30),
        child: TabBar(
          dividerColor: Colors.red,
          tabs: [
            Text(
              "All",
              style: GoogleFonts.archivo(
                  textStyle: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
            Text(
              "Verified",
              style: GoogleFonts.archivo(
                  textStyle: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
            Text(
              "Mentions",
              style: GoogleFonts.archivo(
                  textStyle: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
