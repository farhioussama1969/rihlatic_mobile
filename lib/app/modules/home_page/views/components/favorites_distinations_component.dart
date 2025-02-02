import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/data/models/destination_model.dart';
import 'package:rihlatic/app/modules/home_page/views/home_page_view.dart';
import 'package:rihlatic/app/modules/user_controller.dart';
import 'package:rihlatic/app/routes/app_pages.dart';

class FavoritesDistinationsComponent extends StatelessWidget {
  final String title;
  final List<DestinationModel> itemsList;
  const FavoritesDistinationsComponent({
    super.key,
    required this.title,
    required this.itemsList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyles.mediumLabelTextStyle(context)
                    .copyWith(color: MainColors.textColor(context)),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (Get.find<UserController>().user == null) {
                    HomePageView().showCheckUserStatusWindow();
                  }
                }, // Navigate to the details page
                child: Text(
                  StringsAssetsConstants.seeMore,
                  style: TextStyles.smallLabelTextStyle(context)
                      .copyWith(color: MainColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 217.h, // Height of each list item container
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: itemsList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 10.w),
                width: 175.w,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 175.w,
                        child: NetworkImageComponent(
                          imageLink: itemsList[index].image ?? '',
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MainColors.blackColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemsList[index].name ?? '',
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              color: MainColors.whiteColor,
                              height: 1,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            '${itemsList[index].departuresCount ?? 0} establishment',
                            style:
                                TextStyles.smallBodyTextStyle(context).copyWith(
                              color: MainColors.whiteColor,
                              height: 1,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
