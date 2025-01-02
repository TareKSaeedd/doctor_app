import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theaming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
