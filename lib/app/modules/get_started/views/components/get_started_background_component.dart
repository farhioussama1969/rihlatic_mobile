import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rihlatic/app/core/constants/logos_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';

class GetStartedBackgroundComponent extends StatelessWidget {
  const GetStartedBackgroundComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      decoration: BoxDecoration(
        gradient: MainColors.primaryGradientColor,
      ),
      child: Stack(
        children: [
          PositionedDirectional(
            top: 90.h,
            end: -30.w,
            child: SvgPicture.asset(
              LogosAssetsConstants.appVectorLogo,
              width: 390.w,
              color: MainColors.blackColor.withOpacity(0.15),
            ),
          ),
        ],
      ),
    );
  }
}
