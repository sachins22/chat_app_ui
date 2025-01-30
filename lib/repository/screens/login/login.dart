import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/repository/screens/otp/otp.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';

class LoginScreens extends StatelessWidget {
  LoginScreens({super.key});
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDrak
            : AppColors.scaffoldLight,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
                context: context,
                text: "Enter Your Phone Number",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "bold"),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
                context: context,
                text: "Please confirm your country code and enter ",
                fontSize: 14),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
                context: context, text: "your phone number ", fontSize: 14),
            const SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextFeild(
                context: context,
                controller: phoneNumberController,
                icondata: Icons.phone_android_rounded,
                text: 'Phone Number',
                textinputType: TextInputType.number)
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          buttonName: "Continue",
          VoidCallBack: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OtpScreens()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
