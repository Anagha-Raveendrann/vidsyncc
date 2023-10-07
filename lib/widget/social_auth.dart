import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialAuthWidget extends StatelessWidget {
  const SocialAuthWidget(
      {super.key, required this.logourl, required this.onTap});
  final String logourl;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            SvgPicture.asset('asset/Ellipse 3.svg',width: 48.w,height: 48.h,),
            Positioned(
              top: 6,
              left: 6,
              child: Image.asset(logourl,height: 30,))
          ],
        ));
  
  }
}
