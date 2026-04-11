import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_wheel_date_picker/scroll_wheel_date_picker.dart';

class DateOfBirthTab extends StatefulWidget {
  final void Function()? onTap;
  const DateOfBirthTab({super.key, required this.onTap});

  @override
  State<DateOfBirthTab> createState() => _DateOfBirthTabState();
}

class _DateOfBirthTabState extends State<DateOfBirthTab> {
   DateTime selectedDate = .now();
   int minimumAge = 16;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(LocaleKeys.kWhatIsYourDateOfBirth.tr(), style: Styles.textStyleBlackSB38),
        Text(
          LocaleKeys.kYourAgeHelpsUsTo.tr(),
          style: Styles.textStyleBlackR18,
        ),
        SizedBox(height: 20.h,),
        ScrollWheelDatePicker(
          initialDate: .now(),
            onSelectedItemChanged: (value) {
              selectedDate = value;
              setState(() {

              });
            },
            theme: CurveDatePickerTheme(
              overlay: ScrollWheelDatePickerOverlay.holo,
              wheelPickerHeight: 317.h,
              overlayColor: ColorData.darkGreyColor,
              fadeEdges: true,
              itemTextStyle: Styles.textStyleBlackM28,
            ),
        ),
        Spacer(),
        MainButtonCustom(
          text: LocaleKeys.kContinue.tr(),
          isDisabled: !((DateTime.now().year - selectedDate.year) >= minimumAge) ,
          onTap: widget.onTap ?? () {},
        ),
      ],
    );
  }
}
