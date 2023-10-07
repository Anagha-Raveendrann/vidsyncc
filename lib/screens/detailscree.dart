import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidsync/widget/common.dart';
import 'package:vidsync/widget/episode.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 560.h,
                child: Stack(children: [
                  Image.asset('asset/Rectangle 2 (1).png'),
                  Positioned(
                    top: 320.h,
                    child: Container(
                      width: Get.width,
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.white, Colors.transparent])),
                    ),
                  )
                ])),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 32.w),
                      child: Text(
                        'Aladin Season 1',
                        style: GoogleFonts.roboto(
                            fontSize: 24.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                    vSpace(10),
                    Padding(
                      padding: EdgeInsets.only(left: 32.w),
                      child: Text(
                        '2012 • Cartoon  • 26 Episodes',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff929292)),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('asset/Ellipse 6.svg'),
                    hSpace(16),
                    SvgPicture.asset('asset/Ellipse 6 (2).svg'),
                    hSpace(32)
                  ],
                ),
              ],
            ),
            vSpace(18),
            Padding(
              padding: EdgeInsets.only(left: 32.w),
              child: Text(
                'Aladdin is a Middle-Eastern folk tale. It is one of the best-known tales associated with The Book of One Thousand and One Nights, despite not being part of the original text; it was added by the Frenc…',
                style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff929292)),
              ),
            ),
            vSpace(28),
            Padding(
              padding: EdgeInsets.only(left: 32.w),
              child: Text(
                'Episodes',
                style: GoogleFonts.roboto(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ),
            vSpace(12),
            Wrap(
              children: [
                hSpace(31),
                Episodes(digit: '1'),
                hSpace(12),
                Episodes(digit: '2'),
                 hSpace(12),
                Episodes(digit: '3'),
                 hSpace(12),
                Episodes(digit: '4'),
                 hSpace(12),
                Episodes(digit: '5'),
                 hSpace(12),
                
              ],
            ),
            vSpace(26),
            Padding(
              padding:  EdgeInsets.only(left: 37.w),
              child: SizedBox(
                width: 340,
                height: 50,
                child: ElevatedButton(
                        onPressed: () {
                         
                        },
                        child: Text(
                          "Rent Movie \$10",
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blue,
                        ),
                      ),
              ),
            ),
            vSpace(20),
          ],
        ),
      ),
    );
  }
}
