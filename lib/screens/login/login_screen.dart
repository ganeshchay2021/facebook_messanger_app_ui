import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/domain/constant/cubit/themes_cubit.dart';
import 'package:messanger_app_ui/screens/OTP/otp_screen.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: UiHelper.custonBackButton(onPressed: () {
          Navigator.pop(context);
        }),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.scafoldDark
            : AppColor.scafoldLight,
        actions: [
          IconButton(
              onPressed: () {
                context.read<ThemesCubit>().toggledTheme();
              },
              icon: const Icon(
                Icons.dark_mode_outlined,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
                text: "Enter Your Phone Number",
                context: context,
                fontsize: 24,
                fontFamily: "bold",
                fontweight: FontWeight.w700),
            UiHelper.customText(
                text:
                    "Please confirm your country code and\nenter your phone number",
                context: context,
                fontsize: 14,
                fontweight: FontWeight.w400,
                textAlign: TextAlign.center),
            const SizedBox(
              height: 30,
            ),
            UiHelper.customTextField(
                controller: phoneNumberController,
                context: context,
                hintText: "Phone Number",
                keyboardType: TextInputType.number),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const OtpScreen(),
              ),
            );
          },
          buttonName: "Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
