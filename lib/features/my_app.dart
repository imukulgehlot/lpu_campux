import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lpu_campux/features/sign_in/sign_in_screen.dart';

import '../core/basic_features.dart';
import '../core/theme/app_theme_data.dart';
import '../core/utils/app_binding.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, widget) => GestureDetector(
          onTap: AppUtils.closeKeyboard,
          child: GetMaterialApp(
            builder: EasyLoading.init(
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child!,
              ),
            ),
            darkTheme: AppThemeData.lightTheme,
            theme: AppThemeData.lightTheme,
            defaultTransition: Transition.cupertino,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            title: AppString.appName,
            initialBinding: AppBinding(),
            home: SignInScreen(),
            // home: BottomNavScreen(),
          ),
        ),
      );
}
