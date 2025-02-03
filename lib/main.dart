import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app_ui/domain/constant/app_themes.dart';
import 'package:messanger_app_ui/domain/constant/cubit/themes_cubit.dart';
import 'package:messanger_app_ui/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(BlocProvider(
    create: (_) => ThemesCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesCubit, ThemesState>(
      builder: (context, state) {
        return MaterialApp(
          theme: state is LightThemeState
              ? AppThemes.lightTheme
              : AppThemes.darkTheme,
          title: 'Messanger',
          home: const OnboardingScreend(),
        );
      },
    );
  }
}
