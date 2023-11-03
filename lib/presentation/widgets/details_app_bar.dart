import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/gen/assets.gen.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class DetailsPageAppBar extends StatelessWidget {
  const DetailsPageAppBar({required this.navigationCallback, super.key});
  final VoidCallback navigationCallback;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: navigationCallback,
            child: SvgPicture.asset(Assets.svg.arrowLeft),
          ),
          Text(
            'Recipe details',
            style: TextStyles.largeTitlePoppins,
          ),
          SizedBox(
            width: 24.h,
            height: 24.h,
          )
        ],
      ),
    );
  }
}
