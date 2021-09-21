import 'package:female_test/logic/age_cubit.dart';
import 'package:female_test/screens/summary.view.dart';
import 'package:female_test/utils/colorsConstants.dart';
import 'package:female_test/widgets/dobBackground.widget.dart';
import 'package:female_test/widgets/raisedGradientButton.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' as getx;

class DateOfBirthView extends StatelessWidget {
  List years = [for (var i = 0; i < 31; i++) 1990 + i];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: DobDateOfBirthWidget(
          child: Container(
            height: size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Log in your date of birth',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 250.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CupertinoPicker(
                    itemExtent: 45.h,
                    onSelectedItemChanged: (value) {
                      BlocProvider.of<AgeCubit>(context)
                          .changeSelectedYear(years[value].toString());
                    },
                    children: years
                        .map(
                          (year) => Text(
                            year.toString(),
                            style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: 100.h),
                RaisedGradientButton(
                  onPressed: () {
                    getx.Get.to(
                      () => SummaryView(),
                      transition: getx.Transition.fadeIn,
                      duration: Duration(milliseconds: 500),
                    );
                  },
                  width: 120.w,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0.7, 0.9],
                    colors: [
                      kSecondaryColor,
                      kSecondaryColor.withOpacity(0.9),
                      kSecondaryColor.withOpacity(0.8),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Container(
                          height: 20.w,
                          width: 20.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 13.sp,
                            color: kSecondaryColor,
                          ),
                        ),
                      ),
                    ],
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
