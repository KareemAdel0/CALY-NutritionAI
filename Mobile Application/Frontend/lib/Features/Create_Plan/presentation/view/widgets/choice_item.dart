import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChoiceItem extends StatefulWidget {
  final String label;
  final bool isSelected;
  final String? icon;

  const ChoiceItem({super.key, required this.label, required this.isSelected,this.icon});

  @override
  State<ChoiceItem> createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: 75.h,
      decoration: BoxDecoration(
        color: widget.isSelected
            ? ColorData.primaryColor1
            : ColorData.whiteColor,
        borderRadius: .circular(18.r),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Padding(
            padding: .only(left: 27.w, top: 26.h, bottom: 25.h, right: 29.w),            child: Text(
              widget.label,
              style: Styles.textStyleBlackM18.copyWith(
                color: widget.isSelected
                    ? ColorData.whiteColor
                    : ColorData.blackColor,
              ),
              textAlign: .start,
            ),
          ),
          if(widget.icon != null)
            Padding(
              padding: .all(15.r),
              child: SvgPicture.asset(
                  widget.icon!,
                width: 56.55.w,
                height: 56.57,
              ),
            )
        ],
      ),
    );
  }
}
