// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageSector extends StatelessWidget {
  const ImageSector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 357.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/img5.png"), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 10,
                offset: Offset(0, 10)),
          ]),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
          Colors.black.withOpacity(0.9),
          Colors.black.withOpacity(0.6),
          Colors.black.withOpacity(0.3),
          Colors.black.withOpacity(0.1),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "#SalesforceAI",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Event Last night",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  "SalesforceAI Day",
                  style: GoogleFonts.alef(
                      fontSize: 30.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
