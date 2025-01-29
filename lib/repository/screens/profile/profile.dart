import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';

class ProfileScreens extends StatefulWidget {
  const ProfileScreens({super.key});

  @override
  State<ProfileScreens> createState() => _ProfileScreensState();
}

class _ProfileScreensState extends State<ProfileScreens> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  void saveProfile() {
    // Handle save logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(CupertinoIcons.back),
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDrak
            : AppColors.scaffoldLight,
        title: UiHelper.CustomText(
          context: context,
          text: "Your Profile",
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(
              imgUrl: Theme.of(context).brightness == Brightness.dark
                  ? "bp.png"
                  : "wp.png",
              Height: 150,
              Width: 150,
            ),
            const SizedBox(height: 30),
            UiHelper.CustomTextFeild(
              context: context,
              controller: firstNameController,
              text: 'First Name (Required)',
              textinputType: TextInputType.name,
            ),
            const SizedBox(height: 10),
            UiHelper.CustomTextFeild(
              context: context,
              controller: lastNameController,
              text: "Last Name (Required)",
              textinputType: TextInputType.name,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonName: "Save",
        VoidCallBack: saveProfile,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
