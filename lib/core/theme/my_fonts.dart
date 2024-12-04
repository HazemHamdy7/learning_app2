import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFonts {
  static TextStyle get font22White =>
      GoogleFonts.fredoka(color: Colors.white, fontSize: 22.sp);

  static TextStyle get font15WhiteFeded => GoogleFonts.fredoka(
      color: Colors.white.withOpacity(0.5), fontSize: 15.sp);
}
