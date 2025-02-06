import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/screens/bottonnavbar/more/screen_mode.dart';
import 'package:messanger_app_ui/screens/bottonnavbar/more/widget/more_options.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.scafoldDark
            : AppColor.scafoldLight,
        title: UiHelper.customText(text: "More", context: context),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColor.textfieldDarkMode
                    : AppColor.textfieldLightMode,
              ),
              child: Icon(
                Iconsax.user,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColor.textDarkMode
                    : AppColor.textLightMode,
              ),
            ),
            title: UiHelper.customText(
              text: "Ganesh Chaudhary",
              fontweight: FontWeight.w600,
              fontsize: 16,
              context: context,
            ),
            subtitle: UiHelper.customText(
              text: "+62 1309 - 1710 - 1920",
              fontweight: FontWeight.w600,
              fontsize: 14,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColor.hintTextDarkMode
                  : AppColor.hintTextLightMode,
              context: context,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                MoreOptions(
                  icon: Iconsax.user,
                  optionText: "Account",
                  onTap: () {},
                ),
                MoreOptions(
                  icon: Icons.chat_bubble_outline_outlined,
                  optionText: "Chats",
                  onTap: () {},
                ),
                const Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 20,
                  thickness: 0.5,
                ),
                MoreOptions(
                  icon: Icons.wb_sunny_outlined,
                  optionText: "Appereance",
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const ScreenMode(),
                      ),
                    );
                  },
                ),
                MoreOptions(
                  icon: Icons.notifications_outlined,
                  optionText: "Notifications",
                  onTap: () {},
                ),
                MoreOptions(
                  icon: Icons.folder_outlined,
                  optionText: "Data Usage",
                  onTap: () {},
                ),
                const Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 20,
                  thickness: 0.5,
                ),
                MoreOptions(
                  icon: Icons.help_outline,
                  optionText: "Help",
                  onTap: () {},
                ),
                MoreOptions(
                  icon: Icons.mail_outline,
                  optionText: "Invite your friend",
                  onTap: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
