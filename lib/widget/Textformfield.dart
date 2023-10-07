import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormfield extends StatelessWidget {
  CustomTextFormfield({
    super.key,
    required this.labelText,
    required this.controller,
    required this.icon,
    required this.ontap,
    required this.isobscure,
  });
  TextEditingController controller = TextEditingController();
  final String labelText;
  final Widget icon;
  final Function() ontap;
  final bool isobscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffD9D9D9),
        border: Border.all(color: Color(0xffD9D9D9),width: 1
        )
      ),
      height: 52.h,
      width: 345.w,
      
      child: TextFormField(
        obscureText: isobscure,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10, top: 10),
            suffixIcon: GestureDetector(onTap: ontap, child: icon),
            border: InputBorder.none,
            hintText: labelText,
            hintStyle: TextStyle(fontSize: 13)),
      ),
    );
  }
}
