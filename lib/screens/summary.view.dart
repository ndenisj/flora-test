import 'package:female_test/logic/age_cubit.dart';
import 'package:female_test/logic/choice_cubit.dart';
import 'package:female_test/utils/colorsConstants.dart';
import 'package:female_test/widgets/dobBackground.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryView extends StatelessWidget {
  const SummaryView({Key? key}) : super(key: key);

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
                  'Summary',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15.sp,
                    ),
                    initialValue: BlocProvider.of<ChoiceCubit>(context)
                        .state
                        .selectedChoice,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                      labelText: 'Selected choice',
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15.sp,
                    ),
                    initialValue:
                        BlocProvider.of<AgeCubit>(context).state.selectedYear,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                      labelText: 'Year',
                    ),
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
