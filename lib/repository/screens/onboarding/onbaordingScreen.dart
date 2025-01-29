import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/domain/constants/cubits/themeCubits.dart';
import 'package:messanger_app/repository/screens/login/login.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';

class Onbaordingscreens extends StatelessWidget {
  const Onbaordingscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDrak
          : AppColors.scaffoldLight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<Themecubits>(context).toggleTheme();
                },
                icon: const Icon(Icons.dark_mode_rounded)),
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgUrl: 'bon.jpg')
                : UiHelper.CustomImage(imgUrl: 'on.jpeg'),
            const SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                context: context,
                text: " Connect easily with ",
                fontSize: 24,
                fontFamily: 'bold',
                fontWeight: FontWeight.bold),
            UiHelper.CustomText(
                context: context,
                text: " your family and friends",
                fontSize: 24,
                fontFamily: 'bold',
                fontWeight: FontWeight.bold),
            UiHelper.CustomText(
                context: context,
                text: "over country",
                fontSize: 24,
                fontFamily: 'bold',
                fontWeight: FontWeight.bold),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          buttonName: "Start Messaging ",
          VoidCallBack: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  LoginScreens()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
