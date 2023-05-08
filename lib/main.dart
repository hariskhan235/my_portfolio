import 'dart:ui';

import 'package:flutter/material.dart';
import 'cubit/theme_cubit.dart';
import 'view/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider<ThemeCubit>(
            create: (BuildContext context) => ThemeCubit()),

      ],
      child: BlocBuilder<ThemeCubit,ThemeState>(

        builder: (context,themeState) {
          return ScreenUtilInit(
            builder: (BuildContext context, Widget? child) {
              return  MaterialApp(
              theme: themeState.theme,
                home: child ,
                scrollBehavior: const MaterialScrollBehavior().copyWith(
                  dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.touch,
                    PointerDeviceKind.stylus,
                    PointerDeviceKind.unknown
                  },
                ),
              );

              },
            child: const HomeScreen(),


          );
        }
      ),
    );
  }
}



