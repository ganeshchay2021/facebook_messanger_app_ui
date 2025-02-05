import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/screens/bottonnavbar/bottom_nav_bar.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(text: "Your Profile", context: context),
        leading: UiHelper.customBackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.scafoldDark
            : AppColor.scafoldLight,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.customButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => const BottomNavBar(),
                ),
                (route) => false);
          },
          buttonName: "Save"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? AppColor.textfieldDarkMode
                          : AppColor.textfieldLightMode),
                  child: Icon(
                    Iconsax.user,
                    size: 70,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColor.textDarkMode
                        : AppColor.textLightMode,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? AppColor.textDarkMode
                          : AppColor.textLightMode,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? AppColor.textLightMode
                          : AppColor.textDarkMode,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UiHelper.customTextField(
              context: context,
              hintText: "First Name (Required)",
              keyboardType: TextInputType.text,
              controller: firstNameController,
            ),
            const SizedBox(
              height: 15,
            ),
            UiHelper.customTextField(
              context: context,
              hintText: "Last Name (Optional)",
              keyboardType: TextInputType.text,
              controller: lastNameController,
            ),
          ],
        ),
      ),
    );
  }
}
