import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llm/core/common/widgets/custom_buttons.dart';
import 'package:llm/core/common/widgets/custom_text_field.dart';
import 'package:llm/core/themes/app_colors.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _PhoneController = TextEditingController();
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
                  width: 320,
                  height: 470,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Register",
                        style: GoogleFonts.varelaRound(
                          color: AppColors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomTextField(
                        controller: _userNameController,
                        hint: "User Name",
                        prefixIcon: Icons.person,
                      ),
                      CustomTextField(
                        controller: _emailController,
                        hint: "Email",
                        prefixIcon: Icons.email,
                      ),
                      CustomTextField(
                        controller: _PhoneController,
                        hint: "Phone Number",
                        prefixIcon: Icons.phone,
                      ),
                      CustomTextField(
                        isPasswordField: true,
                        isObscure: true,
                        controller: _passwordController,
                        hint: "Password",
                        prefixIcon: Icons.lock,
                      ),
                      Buttons(
                        text: "Register",
                        onpressed: () => Navigator.pushNamed(context, '/login'),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already Have An Account?",
                        style: GoogleFonts.varelaRound(color: AppColors.white),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap =
                                  () => Navigator.pushNamed(context, '/login'),
                      ),
                      TextSpan(
                        text: "\tLog In",
                        style: GoogleFonts.varelaRound(color: Colors.white),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap =
                                  () => Navigator.pushNamed(context, '/login'),
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
