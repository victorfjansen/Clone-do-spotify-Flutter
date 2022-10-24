import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/modules/home/screens/home_screen.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

import 'modules/InitialScreen/screens/Initial_screen.dart';
import 'modules/Login/screens/Login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const ProjectColors projectColors = ProjectColors();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme().apply(
              bodyColor: Color(projectColors.getColors(ColorsEnum.white)),
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: Color(projectColors.getColors(ColorsEnum.primaryGreen)),
              selectionColor: Color(projectColors.getColors(ColorsEnum.primaryGreen)),
            ),
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            filled: true,
            fillColor: Colors.white12,
          )
        ),
        initialRoute: '/initial-screen',
        routes: {
          "/initial-screen": (context) => const InitialScreen(),
          "/login-screen": (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
        }
    );
  }
}
