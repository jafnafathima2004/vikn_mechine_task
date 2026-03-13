import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';

class Apptextstyle {
  static TextStyle small({
    Color?fontColor,
    double?fontSize,
    FontWeight?fontWeight

  }){
    return GoogleFonts.poppins(
        color: fontColor??Appcolors.text,
      fontSize: fontSize??14.sp,
      fontWeight: fontWeight??FontWeight.w400
    );
  }
  static TextStyle medium({
       Color?fontColor,
    double?fontSize,
    FontWeight?fontWeight
  })
 { 
  return GoogleFonts.poppins(
    color: fontColor??Appcolors.text,
      fontSize: fontSize??18.sp,
      fontWeight: fontWeight??FontWeight.w500
  );}
  static TextStyle large({
       Color?fontColor,
    double?fontSize,
    FontWeight?fontWeight
  })
 { 
  return GoogleFonts.poppins(
    color: fontColor??Appcolors.text,
      fontSize: fontSize??20.sp,
      fontWeight: fontWeight??FontWeight.w600
  );}

}