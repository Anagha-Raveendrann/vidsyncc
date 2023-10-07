import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidsync/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(393, 852),
        builder: (context, child) {
          return GetMaterialApp(
            theme: ThemeData(
              
            ),
            debugShowCheckedModeBanner: false,
            title: 'VidSync',
           home: LoginScreeen(),
          );
        });
  }
}

