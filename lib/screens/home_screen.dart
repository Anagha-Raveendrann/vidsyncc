import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidsync/screens/Bottomnavigation.dart';
import 'package:vidsync/widget/common.dart';
import 'package:vidsync/widget/movie_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const vSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'asset/VidSync 1.png',
                    width: 100.w,
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'asset/share.svg',
                      ),
                      hSpace(5),
                      SvgPicture.asset(
                        'asset/filter.svg',
                      ),
                      hSpace(5),
                      
                      SvgPicture.asset(
                        'asset/tv.svg',
                      ),
                      const hSpace(10)
                    ],
                  )
                ],
              ),
              Container(
                width: Get.width,
                height: Get.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('asset/banner.png'),
                    vSpace(37),
                    Padding(
                      padding: EdgeInsets.only(left: 32.w),
                      child: Text(
                        'Trending Movies',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      
                    ),
                    vSpace(18),
                    Expanded(
                      child: MOvieList()
                    ),
                    Expanded(
                      child: MOvieList()
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          
        ),
        
      
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home,color: blue,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.discord),label: "Discover"),
        BottomNavigationBarItem(icon: Icon(Icons.library_add),label: "Library"),
      ]),
      
    );
    
  }
}
