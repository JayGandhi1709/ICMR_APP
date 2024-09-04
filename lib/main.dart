import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icmr/pages/Forms/HFAT-1/FormA.dart';
import 'package:icmr/pages/HomePage/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icmr/pages/main_home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]).then(
    (_) {
      runApp(
        const MyApp(),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(242, 247, 255, 1),
        ),
        useMaterial3: true,
      ),
      home: const FormA(),
    );
  }
}
