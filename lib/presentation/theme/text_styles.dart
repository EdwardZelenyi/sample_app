import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';

const poppinsFamily = 'Poppins';

class TextStyles {
  static TextStyle commonPoppins = TextStyle(
    fontSize: 16.sp,
    color: Palette.textColor,
    fontFamily: poppinsFamily,
  );

  static TextStyle largeTitlePoppins = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22.sp,
    color: Palette.textColor,
    fontFamily: poppinsFamily,
  );
  static TextStyle hintPoppins = TextStyle(
    fontSize: 12.sp,
    color: Palette.hintColor,
    fontFamily: poppinsFamily,
  );
}
