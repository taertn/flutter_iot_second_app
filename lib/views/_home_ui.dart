import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 250.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'สวัสดี ยินดีต้อนรับสู่แอป IoT',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 22, 20, 20),
              ),
            ),
            Text(
              'southeast asia university',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 22, 20, 20),
              ),
            ),
            Text(
              'created by Rattana',
              style: GoogleFonts.itim(
                fontSize: 18.0,
                color: const Color.fromARGB(255, 22, 20, 20),
              ),
            ),
          ],
        ),  
      ),
    );
  }
}
