import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app/domain/constants/apptheme.dart';
import 'package:messanger_app/domain/constants/cubits/themeCubits.dart';
import 'package:messanger_app/domain/constants/cubits/themeState.dart';
import 'package:messanger_app/repository/screens/onboarding/onbaordingScreen.dart';

void main() {
  runApp(BlocProvider(
    create: (_) => Themecubits(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Themecubits, Themestate>(
      builder: (context, state) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state is LightThemeStates ? Appthemes.lightTheme : Appthemes.darkTheme,
          home:const Onbaordingscreens());
      },
    );
  }
}

