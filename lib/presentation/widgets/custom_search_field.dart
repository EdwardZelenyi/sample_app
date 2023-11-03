import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    required this.controller,
    required this.searchCallback,
    super.key,
  });
  final TextEditingController controller;
  final void Function(String query) searchCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 49.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.universalGrayBorder,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30.r),
        ),
        color: Colors.white,
      ),
      child: TextField(
        onChanged: searchCallback,
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.h),
                child: VerticalDivider(
                  thickness: 1.5.w,
                  color: Palette.universalGrayBorder,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.w,
                ),
                child: SizedBox(
                  width: 38.w,
                  height: 31.h,
                  child: SvgPicture.asset(
                    'assets/svg/filter.svg',
                    height: 16.h,
                    width: 16.w,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              )
            ],
          ),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 10.w),
                child: SvgPicture.asset(
                  'assets/svg/search.svg',
                  height: 21.h,
                  width: 21.w,
                ),
              ),
            ],
          ),
          border: InputBorder.none,
          hintText: 'Search recipe',
          hintStyle: TextStyles.commonPoppins
              .copyWith(fontSize: 14.sp, color: Palette.hintColor),
        ),
      ),
    );
  }
}
