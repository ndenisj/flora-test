import 'package:female_test/logic/age_cubit.dart';
import 'package:female_test/logic/choice_cubit.dart';
import 'package:female_test/screens/choice.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChoiceCubit>(
          create: (BuildContext context) => ChoiceCubit(),
        ),
        BlocProvider<AgeCubit>(
          create: (BuildContext context) => AgeCubit(),
        ),
      ],
      child: GetMaterialApp(
        title: 'Flutter Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Nunito'),
        home: ScreenUtilInit(
          designSize: const Size(360, 690),
          builder: () => ChoiceView(),
        ),
      ),
    );
  }
}
