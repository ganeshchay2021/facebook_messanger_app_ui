import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app_ui/domain/constant/cubit/themes_cubit.dart';
import 'package:messanger_app_ui/screens/login/login_screen.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class OnboardingScreend extends StatelessWidget {
  const OnboardingScreend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ThemesCubit, ThemesState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.assetImage(
                    image: state is LightThemeState
                        ? "assets/images/Illustration.png"
                        : "assets/images/Illustration (1).png",
                    height: 271,
                    width: 268),
                const SizedBox(
                  height: 20,
                ),
                UiHelper.customText(
                    context: context,
                    text:
                        "Connect easily with\nyour family and friends\nover countries",
                    fontsize: 24,
                    fontFamily: "bold",
                    fontweight: FontWeight.w700,
                    textAlign: TextAlign.center)
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.customButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
        buttonName: "Start Messaging",
      ),
    );
  }
}
