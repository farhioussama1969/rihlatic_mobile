import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class ListFiltreViewComponent extends StatelessWidget {
  const ListFiltreViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        gradient: MainColors.primaryGradientColor,
                        border: Border.all(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.0),
                        ),
                      ),
                      width: 60.r,
                      height: 60.r,
                      padding: const EdgeInsets.all(15),
                    ),
                    SvgPicture.asset(
                      IconsAssetsConstants.kidsIcon,
                      color: MainColors.whiteColor,
                      width: 30.r,
                      height: 30.r,
                    ),
                  ],
                ),
                Text(
                  'Flight',
                  style: TextStyles.smallLabelTextStyle(context)
                      .copyWith(color: MainColors.textColor(context)!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
