import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/packages/input-quantity-master/lib/src/decoration_props.dart';
import 'package:rihlatic/app/core/components/packages/input-quantity-master/lib/src/input_qty.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';

class AddQuantityComponent extends StatelessWidget {
  const AddQuantityComponent({
    super.key,
    required this.productQuantity,
    required this.changeSelectedProductQuantity,
    required this.minval,
    required this.initval,
    required this.maxval, // Added maxval as a parameter
  });

  final int productQuantity;
  final int minval;
  final int initval;
  final int maxval; // maxval to be passed
  final Function(int) changeSelectedProductQuantity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: productQuantity != -1
          ? Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Divider(
                    color: MainColors.inputColor(context)!,
                    thickness: 1.h,
                    height: 1.h,
                  ),
                ),
                SizedBox(height: 13.h),
                InputQty.int(
                  decoration: QtyDecorationProps(
                    width: 20,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                    btnColor: MainColors.primaryColor,
                  ),
                  initVal: initval,
                  minVal: minval,
                  maxVal: maxval, // Dynamic maxval
                  steps: 1,
                  onQtyChanged: (val) {
                    debugPrint('Quantity changed: $val');
                    changeSelectedProductQuantity(val);
                  },
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
