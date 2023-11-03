import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/gen/assets.gen.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 19.h, right: 20.w),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: SvgPicture.asset(Assets.svg.share),
      ),
    );
  }
}
