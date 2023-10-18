import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mesbaha/home_screen.dart';
import 'package:mesbaha/slpash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 782),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, child) =>  MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor:Colors.blueGrey.shade700),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

