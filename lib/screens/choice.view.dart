import 'package:female_test/logic/choice_cubit.dart';
import 'package:female_test/logic/summary_state.dart';
import 'package:female_test/screens/dateOfBirth.view.dart';
import 'package:female_test/widgets/choiceBackground.widget.dart';
import 'package:female_test/widgets/selectOption.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' as getx;

class ChoiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: ChoiceBackgroundWidget(
          child: Container(
            height: size.height,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 33.w),
            child: BlocConsumer<ChoiceCubit, SummaryState>(
              listener: (context, state) {
                if (state.selectedChoice != '') {
                  getx.Get.to(
                    () => DateOfBirthView(),
                    transition: getx.Transition.rightToLeft,
                    duration: Duration(
                      milliseconds: 500,
                    ),
                  );
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectOptionWidget(
                      title: 'Track my period',
                      subtitle: 'contraception and wellbeing',
                      onPress: () {
                        BlocProvider.of<ChoiceCubit>(context)
                            .changeSelectedChoice('Track my period');
                      },
                    ),
                    SizedBox(height: 45.h),
                    SelectOptionWidget(
                      title: 'Get pregnant',
                      subtitle: 'learn about reproductive health',
                      onPress: () {
                        BlocProvider.of<ChoiceCubit>(context)
                            .changeSelectedChoice('Get pregnant');
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
