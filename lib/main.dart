
import 'package:flutter/material.dart';
import 'package:flutter_iot_second_app/views/_home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    flutteriotSecondApp()
  );

}

class flutteriotSecondApp extends StatefulWidget {
  const flutteriotSecondApp({super.key});

  @override
  State<flutteriotSecondApp> createState() => _flutteriotSecondAppState();
}

class _flutteriotSecondAppState extends State<flutteriotSecondApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}