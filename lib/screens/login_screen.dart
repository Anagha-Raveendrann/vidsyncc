import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidsync/controller/Login_controller.dart';
import 'package:vidsync/screens/home_screen.dart';
import 'package:vidsync/widget/Textformfield.dart';
import 'package:vidsync/widget/common.dart';
import 'package:vidsync/widget/social_auth.dart';

class LoginScreeen extends StatelessWidget {
  LoginScreeen({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<LoginController>(builder: (controller) {
        return SafeArea(
          child: Column(
            children: [
              vSpace(182),
              Center(
                  child: Image.asset(
                'asset/logovid.png',
                width: 120.w,
                height: 50.h,
              )),
              vSpace(5),
              SvgPicture.asset(
                'asset/slogan.svg',
                width: 119.w,
                height: 15.h,
              ),
              vSpace(32),
              CustomTextFormfield(
                  labelText: 'Username',
                  controller: controller.nameController,
                  icon: SizedBox(),
                  ontap: () {},
                  isobscure: false),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => CustomTextFormfield(
                  labelText: "password",
                  controller: controller.PasswordController,
                  icon: controller.obscure.value == true
                      ? Icon(
                          Icons.visibility_outlined,
                          color: Colors.black
                        )
                      : Icon(Icons.visibility_off_outlined,color: Colors.black,),
                  ontap: () {
                    controller.obscure.toggle();
                    print(controller.obscure.value);
                  },
                  isobscure: controller.obscure.value,
                ),
              ),
              vSpace(14),
              Padding(
                padding: EdgeInsets.only(left: 230.w),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: blue,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              vSpace(18),
              SizedBox(
                height: 52.h,
                width: 345.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>HomeScreen());
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue,
                  ),
                ),
              ),
              vSpace(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 96.w,
                    child: Divider(
                      thickness: 2.w,
                    ),
                  ),
                  hSpace(10),
                  Text(
                    'Or continue with',
                    style: TextStyle(
                        color: Color(0xff929292),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  hSpace(10),
                  SizedBox(
                    width: 96.w,
                    child: Divider(
                      thickness: 2.w,
                    ),
                  ),
                ],
              ),
              
            
              vSpace(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialAuthWidget(logourl: 'asset/Google (1).png', onTap: () {}),
                  hSpace(14),
                  SocialAuthWidget(logourl: 'asset/Facebook.png', onTap: () {}),
                  hSpace(14),
                  SocialAuthWidget(logourl: 'asset/Apple Logo.png', onTap: () {}),
                  hSpace(14),
                  SocialAuthWidget(logourl: 'asset/Frame.png', onTap: () {}),
                  
                ],
              ),
              vSpace(24),
              Text('Don’t have an account ? Sign Up',style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
        );
      }),
    );
  }
}
