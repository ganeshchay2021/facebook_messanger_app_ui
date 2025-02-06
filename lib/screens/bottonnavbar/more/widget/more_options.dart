import 'package:flutter/material.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class MoreOptions extends StatelessWidget {
  final IconData icon;
  final String optionText;
  final VoidCallback onTap;
  const MoreOptions({
    super.key,
    required this.icon,
    required this.optionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        leading: Icon(icon),
        title: UiHelper.customText(
          text: optionText,
          context: context,
          fontsize: 16,
          fontweight: FontWeight.w600,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
