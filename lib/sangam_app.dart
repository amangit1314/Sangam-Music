import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'core/utils/theme/colors.dart';
import 'core/utils/theme/cubit/theme_cubit.dart';
import 'features/auth/logic/bloc/auth_bloc.dart';
import 'features/auth/logic/repository/auth_repository.dart';
import 'splash_screen.dart';

class SangamApp extends StatelessWidget {
  const SangamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
          child: const ThemedSangamApp(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(AuthRepository()),
        ),
      ],
      child: const ThemedSangamApp(),
    );
  }
}

class ThemedSangamApp extends StatelessWidget {
  const ThemedSangamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, state) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (BuildContext context) => "Moonbase",
          theme: state == ThemeData.dark()
              ? SangamMusicAppColorTheme.darkTheme
              : SangamMusicAppColorTheme.lightTheme,
          home: const SplashScreen(),
          // home: Onboard(),
        );
      },
    );
  }
}
