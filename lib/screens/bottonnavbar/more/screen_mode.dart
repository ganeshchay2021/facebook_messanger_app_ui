import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/domain/constant/cubit/themes_cubit.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class ScreenMode extends StatefulWidget {
  const ScreenMode({super.key});

  @override
  State<ScreenMode> createState() => _ScreenModeState();
}

class _ScreenModeState extends State<ScreenMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: UiHelper.customBackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: UiHelper.customText(text: "Screen Mode", context: context),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.scafoldDark
            : AppColor.scafoldLight,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.customText(
                  text: "Change Screen Mode",
                  context: context,
                  fontsize: 20,
                  fontweight: FontWeight.w500,
                ),
                Switch(
                  activeColor: Colors.green,
                  value: Theme.of(context).brightness == Brightness.dark
                      ? true
                      : false,
                  onChanged: (value) {
                    setState(() {
                      context.read<ThemesCubit>().toggledTheme();
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
