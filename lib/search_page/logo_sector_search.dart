// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoSector extends StatelessWidget {
  const LogoSector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/mypicture.jpg",
                  ),
                )),
          ),
          Container(
            height: 25.h,
            width: 250.w,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(60.r)),
            child: Container(
              height: 25.h,
              width: 250.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Image.asset(
                      "assets/navigator/search_off.png",
                      height: 15.h,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 11.h, top: 0),
                        hintText: "Search",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 18.h,
            width: 18.w,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icons/setting.png",
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
