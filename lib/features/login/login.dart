import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llm/core/common/widgets/custom_buttons.dart';
import 'package:llm/core/common/widgets/custom_text_field.dart';
import 'package:llm/core/themes/app_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.black.withOpacity(0.5),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Crop Connect",
                  style: GoogleFonts.varelaRound(
                    color: AppColors.white,
                    fontSize: 30,
                  ),
                ),
                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.varelaRound(
                          color: AppColors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomTextField(
                        controller: _emailController,
                        hint: "Email",
                        prefixIcon: Icons.email,
                      ),
                      CustomTextField(
                        isPasswordField: true,
                        isObscure: true,
                        controller: _passwordController,
                        hint: "Password",
                        prefixIcon: Icons.lock,
                      ),
                      Align(
                        alignment: Alignment(0.8, 0),
                        child: GestureDetector(
                          onTap:
                              () => Navigator.pushNamed(context, '/forgotpass'),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      Buttons(
                        text: "Login",
                        onpressed: () => Navigator.pushNamed(context, '/home'),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't Have An Account?",
                        style: GoogleFonts.varelaRound(color: AppColors.white),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap =
                                  () =>
                                      Navigator.pushNamed(context, '/register'),
                      ),
                      TextSpan(
                        text: "\tSign Up",
                        style: GoogleFonts.varelaRound(color: Colors.white),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap =
                                  () =>
                                      Navigator.pushNamed(context, '/register'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
