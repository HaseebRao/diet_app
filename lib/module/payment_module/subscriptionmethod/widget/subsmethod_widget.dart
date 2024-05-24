import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';

class SubsmethodWidget extends StatefulWidget {
  final String? svgAsset; // Add svgAsset property
  final String? text;
  final bool isSelected;
  final Function(bool) onSelectionChanged;

  SubsmethodWidget({
    required this.svgAsset,
    required this.text,
    required this.isSelected,
    required this.onSelectionChanged,
  });

  @override
  _SubsmethodWidgetState createState() => _SubsmethodWidgetState();
}

class _SubsmethodWidgetState extends State<SubsmethodWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSelectionChanged(!widget.isSelected);
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 13.h),
        child: Container(
          height: 54.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.whiteTextColor,
            border: Border.all(
              color: widget.isSelected ? AppColors.Profilecircle : Colors.transparent,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  widget.svgAsset!,
                  // color: AppColors.Profilecircle,
                  height: 17.h,
                ),
                SizedBox(width: 12.w),
                Text(
                  widget.text!,
                  style: TextStyle(
                    fontSize: 11.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.Profiletexts,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors. Profilecircle,
                  size: 15.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
