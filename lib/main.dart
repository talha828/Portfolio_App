import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talhaiqbal/constant/constant.dart';
import 'package:talhaiqbal/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryTextTheme:
        GoogleFonts.mulishTextTheme(Theme.of(context).textTheme),
        primarySwatch: createMaterialColor(themeColor),
        buttonTheme: const ButtonThemeData(
          buttonColor: themeColor,
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}


MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
