import 'package:bedo/consts/app_colors.dart';
import 'package:bedo/routing/appRouts.dart';
import 'package:bedo/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp( MyApp(appRoutes: AppRoutes(),));
}

class MyApp extends StatelessWidget {
  final AppRoutes appRoutes;
  const MyApp({required this.appRoutes ,super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        onGenerateRoute: appRoutes.generateRoute,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
        ),
        home:const OnBoaringScreen() ,
      ),
    );
  }
}


