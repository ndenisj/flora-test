import 'package:female_test/utils/colorsConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectOptionWidget extends StatelessWidget {
  const SelectOptionWidget({
    required this.onPress,
    required this.subtitle,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15.w),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            Container(
              height: 25.w,
              width: 25.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 15.sp,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
