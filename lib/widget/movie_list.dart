import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidsync/screens/detailscree.dart';
import 'package:vidsync/widget/common.dart';

class MOvieList extends StatelessWidget {
  const MOvieList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(width: 37.w, child: Container()),
        GestureDetector(
          onTap: () {
            Get.to(()=>DetailScreen());
          },
          child: Container(
            width: 127.w,
            height: 164.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('asset/movie1.png'),
                Text(
                  'Everything every..',
                  style: GoogleFonts.roboto(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  '2021',
                  style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      color: Color(0xff929292),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
        hSpace(10),
        Container(
          width: 127.w,
          height: 164.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('asset/movie2.png'),
              Text(
                'Everything every..',
                style: GoogleFonts.roboto(
                    fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
              Text(
                '2021',
                style: GoogleFonts.roboto(
                    fontSize: 12.sp,
                    color: Color(0xff929292),
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        // 
         hSpace(10),
        Container(
          width: 127.w,
          height: 164.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('asset/movie1.png'),
              Text(
                'Everything every..',
                style: GoogleFonts.roboto(
                    fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
              Text(
                '2021',
                style: GoogleFonts.roboto(
                    fontSize: 12.sp,
                    color: Color(0xff929292),
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      
        
      ],
    );
  }
}
