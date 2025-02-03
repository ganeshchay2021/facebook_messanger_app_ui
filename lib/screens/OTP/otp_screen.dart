import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/screens/profile/profile.dart';

import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColor.textfieldDarkMode
            : AppColor.textfieldLightMode,
        borderRadius: BorderRadius.circular(8),
      ),
    );
    TextEditingController otpController = TextEditingController();

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColor.textfieldDarkMode
          : AppColor.textfieldLightMode,
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColor.textfieldDarkMode
            : AppColor.textfieldLightMode,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: UiHelper.customBackButton(onPressed: () {
          Navigator.pop(context);
        }),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.scafoldDark
            : AppColor.scafoldLight,
       
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
                text: "Enter Code",
                context: context,
                fontsize: 24,
                fontFamily: "bold",
                fontweight: FontWeight.w700),
            UiHelper.customText(
                text:
                    "We have sent you an SMS with the code\nto +62 1309 - 1710 - 1920",
                context: context,
                fontsize: 14,
                fontweight: FontWeight.w400,
                textAlign: TextAlign.center),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Pinput(
                autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const ProfileScreen(),
            ),
          );
        },
        child: UiHelper.customText(
            text: "Resend Code",
            letterSpacing: 1,
            context: context,
            fontsize: 18,
            fontweight: FontWeight.w600,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColor.scafoldLight
                : AppColor.buttonLightMode),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
