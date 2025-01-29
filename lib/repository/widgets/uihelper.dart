import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';

class UiHelper {
  // Image container
  static CustomImage({required String imgUrl,double ? Height, double ? Width}) {
    return Image.asset('assets/images/$imgUrl', width:Width ,height: Height,);
  }

  // text container
  static CustomText({
    required BuildContext context, // Context added
    required String text,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? "regular",
        fontSize: fontSize,
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textDarkMode
                : AppColors.textlightMode), // Fixed ternary condition
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }

  // button container
  static CustomButton(
      {required String buttonName,
      required VoidCallback VoidCallBack,
      Color? buttonColor}) {
    return SizedBox(
      height: 52,
      width: 350,
      child: ElevatedButton(
          onPressed: VoidCallBack,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonLightMode,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: Text(
            buttonName,
            style: const TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "bold"),
          )),
    );
  }

  // Inputfield container
  static CustomTextFeild({
    required BuildContext context,
    required TextEditingController controller,
    required String text,
    required TextInputType textinputType,
  }) {
    return Container(
      height: 45,
      width: 327,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerDarkMode
            : AppColors.containerLightMode,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          controller: controller,
          keyboardType: textinputType,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.HinttextdarkMode
                      : AppColors.HinttextLightMode,
                      fontSize: 14),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
