import 'package:currency_converter/core/components/theme_components.dart';
import 'package:currency_converter/routes/my_route.dart';
import 'package:currency_converter/service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            navigatorKey: NavigationService.instance.navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'UBC App',
            theme: MyTheme.mytheme,
            onGenerateRoute: MyRoute.instance.myRoutes,
            initialRoute: '/splash');
      },
    );
  }
}
