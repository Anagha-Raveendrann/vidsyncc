import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Episodes extends StatelessWidget {
  const Episodes({super.key, required this.digit});
final String digit;
  @override
  Widget build(BuildContext context) {
    return Container(
  child: Center(child: Text(digit,style: GoogleFonts.roboto(fontSize: 20.sp),)),
  width: 48,
  height: 48,
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.black38
    ),
    borderRadius: BorderRadius.all(Radius.circular(10.r))
  ),
) ;
  }
}