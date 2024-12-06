import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class ListeFiltreComponent extends StatefulWidget {
  const ListeFiltreComponent({super.key});

  @override
  State<ListeFiltreComponent> createState() => _ListeFiltreComponentState();
}

class _ListeFiltreComponentState extends State<ListeFiltreComponent> {
  List<bool> isClickedList = List.generate(20, (_) => false);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isClickedList[index] = !isClickedList[index];
              });
            },
            child: isClickedList[index] ? changColor(index) : sameColor(index),
          );
        },
      ),
    );
  }

  Widget sameColor(int index) {
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
                    color: MainColors.textColor(context)!.withOpacity(0.0),
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
  }

  Widget changColor(int index) {
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
                  gradient: LinearGradient(
                    colors: MainColors.primaryGradientColor.colors
                        .map((color) => color.withOpacity(0.3))
                        .toList(),
                    begin: MainColors.primaryGradientColor.begin,
                    end: MainColors.primaryGradientColor.end,
                  ),
                  border: Border.all(
                    color: MainColors.textColor(context)!.withOpacity(0.0),
                  ),
                ),
                width: 60.r,
                height: 60.r,
                padding: const EdgeInsets.all(15),
              ),
              SvgPicture.asset(
                IconsAssetsConstants.kidsIcon,
                color: MainColors.primaryColor,
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
  }
}
