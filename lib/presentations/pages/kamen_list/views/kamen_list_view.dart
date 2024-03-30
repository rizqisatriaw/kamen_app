import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kamen_app/configs/constants/assets_const.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../../configs/routes/main_route.dart';
import '../../../../configs/themes/color_themes.dart';
import '../../../widgets/custom_item_list.dart';

class KamenListView extends StatelessWidget {
  const KamenListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorThemes.whiteColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StickyHeader(
                  /// Search
                  header: Container(
                    width: MediaQuery.of(context).size.width,
                    color: ColorThemes.whiteColor,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 16.w,
                      ),
                      alignment: Alignment.center,
                      width: Get.width,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: ColorThemes.primaryColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      // child: CustomTextForm()
                    ),
                  ),

                  /// List Assessment
                  content: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      // final item = controller.kamenList[index];
                      return CustomItemList(
                        onTap: () => Get.toNamed(
                          MainRoute.detailKamen,
                          // arguments: item.id,
                        ),

                        /// real data
                        // image: item.image ?? '',
                        // name: item.name ?? '',
                        // color: item.color ?? '',
                        // stock: item.stock ?? '',

                        /// dummy data
                        image: Image.asset(AssetsConst.kamenImage).toString(),
                        name: 'Kamen Rajut',
                        color: 'Ungu',
                        stock: 4,
                        onTapDelete: () {},
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: 16.h,
                    ),
                    // itemCount: controller.kamenList.length,
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
