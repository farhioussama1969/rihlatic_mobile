import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/packages/input-quantity-master/lib/src/decoration_props.dart';
import 'package:rihlatic/app/core/components/packages/input-quantity-master/lib/src/input_qty.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class AddQuantityComponent extends StatelessWidget {
  const AddQuantityComponent(
      {super.key,
      required this.productQuantity,
      required this.changeSelectedProductQuantity});
  final int productQuantity;
  final Function(int) changeSelectedProductQuantity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: productQuantity != 0
          ? Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Divider(
                    color: MainColors.inputColor(context)!,
                    thickness: 1.h,
                    height: 1.h,
                    indent: 0,
                    endIndent: 0,
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                InputQty.int(
                  decoration: QtyDecorationProps(
                    width: 20,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                    btnColor: MainColors.primaryColor,
                  ),
                  initVal: 1,
                  minVal: 1,
                  maxVal: productQuantity,
                  steps: 1,
                  onQtyChanged: (val) {
                    changeSelectedProductQuantity(val);
                  },
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
