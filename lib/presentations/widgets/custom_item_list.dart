import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/themes/color_themes.dart';
import 'custom_text.dart';

class CustomItemList extends StatelessWidget {
  const CustomItemList({
    Key? key,
    required this.image,
    required this.name,
    required this.onTap,
    required this.color,
    required this.stock,
    required this.onTapDelete,
  }) : super(key: key);

  final String image;
  final String name;
  final String color;
  final int stock;
  final VoidCallback onTap;
  final VoidCallback onTapDelete;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: ColorThemes.secondaryColor),
          color: ColorThemes.whiteColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: 22.w),
                child: CachedNetworkImage(
                  imageUrl: image,
                  width: 74.w,
                  height: 74.w,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.image_not_supported_outlined),
                  progressIndicatorBuilder: (context, url, progress) =>
                      const CircularProgressIndicator(),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Name
                    CustomText(
                      title: name,
                      size: 18.sp,
                      weight: FontWeight.w500,
                      colorText: ColorThemes.primaryColor,
                    ),
                    SizedBox(height: 4.h),

                    /// Color Type
                    CustomText(
                      title: color,
                      size: 14.sp,
                      weight: FontWeight.w300,
                      colorText: ColorThemes.secondaryColor,
                    ),
                    SizedBox(height: 8.h),

                    /// Stock Item
                    CustomText(
                      title: stock.toString(),
                      size: 22.sp,
                      weight: FontWeight.w500,
                      colorText: ColorThemes.primaryColor,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline),
                color: ColorThemes.primaryColor,
                iconSize: 24.sp,
                onPressed: onTapDelete,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
