import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';

class UiHelper {
  static assetImage(
      {required String image, double? height, double? width, BoxFit? boxfit}) {
    return Image.asset(
      image,
      height: height,
      width: width,
      fit: boxfit,
    );
  }

  static networkImage(
      {required String image, double? height, double? width, BoxFit? boxfit}) {
    return Image.network(
      image,
      height: height,
      width: width,
      fit: boxfit,
    );
  }

  static customText({
    required String text,
    double? height,
    Color? color,
    double? fontsize,
    FontWeight? fontweight,
    String? fontFamily,
    double? letterSpacing,
    TextAlign? textAlign,
    
    required BuildContext context,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        letterSpacing: letterSpacing ,
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColor.textDarkMode
                : AppColor.textLightMode),
        height: height,
        fontSize: fontsize,
        fontWeight: fontweight,
        fontFamily: fontFamily ?? "regular",
      ),
    );
  }

  static customButton({
    required VoidCallback onPressed,
    required String buttonName,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  static customTextField(
      {required BuildContext context,
      required String hintText,
      required TextInputType keyboardType,
      required TextEditingController controller}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColor.hintTextDarkMode
                : AppColor.hintTextLightMode),
        enabledBorder: OutlineInputBorder(
          // When text field is enabled but not focused
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          // When text field is focused
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.transparent, // Optional: Different color when focused
          ),
        ),
        fillColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.textfieldDarkMode
            : AppColor.textfieldLightMode,
        filled: true,
      ),
    );
  }

  static custonBackButton({required VoidCallback onPressed}) {
    return IconButton(
      icon: const Icon(
        CupertinoIcons.back),
      onPressed: onPressed,
    );
  }
}
