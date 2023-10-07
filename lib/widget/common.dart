// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class hSpace extends StatelessWidget {
  const hSpace(this.width, {super.key});
  final double width;
  @override
  Widget build(BuildContext context) => SizedBox(width: width.w);
}

// ignore: camel_case_types
class vSpace extends StatelessWidget {
  const vSpace(this.height, {super.key});
  final double height;
  @override
  Widget build(BuildContext context) => SizedBox(height: height.h);
}

Color blue = Color(0xff1E55EF);


