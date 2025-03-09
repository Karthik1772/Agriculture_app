import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llm/core/themes/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 30),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.green),
                borderRadius: BorderRadius.circular(180),
                image: const DecorationImage(
                  image: AssetImage("assets/Logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Crop Connect",
              style: GoogleFonts.varelaRound(
                color: AppColors.white,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 200),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Container(
                height: 35,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.white),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Get Started",
                      style: GoogleFonts.workSans(
                        color: AppColors.white,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: 20,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
