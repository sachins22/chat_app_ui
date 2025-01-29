import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/repository/screens/profile/profile.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';
import 'package:pinput/pinput.dart';

class OtpScreens extends StatelessWidget {
  OtpScreens({super.key});
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.otpTextdarkMode
          : AppColors.otpTextLightMode,
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpTextdarkMode
            : AppColors.otpTextLightMode,
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
                context: context,
                text: "Enter Code",
                fontSize: 24,
                fontFamily: "bold",
                fontWeight: FontWeight.bold),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
              context: context,
              text: "We have sent you an SMS with the code",
              fontSize: 14,
            ),
            const SizedBox(
              height: 7,
            ),
            UiHelper.CustomText(
              context: context,
              text: "to +62 - 1309 - 1701 - 1922 ",
              fontSize: 14,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                autofocus: true,
                onCompleted: (value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreens()));
                },
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
          onPressed: () {},
          child: Text(
            'Resend Code',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.otpButtonTextDarkMode
                  : AppColors.otpButtonTextLightMode,
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
