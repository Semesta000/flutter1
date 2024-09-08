import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(primarySwatch: Colors.lightBlue,textTheme: GoogleFonts.robotoTextTheme()),
      
    );
  }
}
