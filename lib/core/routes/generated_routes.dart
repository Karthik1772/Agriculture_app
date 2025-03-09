import 'package:flutter/material.dart';
import 'package:llm/features/forgotPassword/pages/forgotPass.dart';
import 'package:llm/features/forgotPassword/pages/newpass.dart';
import 'package:llm/features/homepage/homepage.dart';
import 'package:llm/features/login/login.dart';
import 'package:llm/features/register/register.dart';
import 'package:llm/features/splash/splash.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/forgotpass":
        return MaterialPageRoute(builder: (context) => ForgotPassword());
      case "/newpass":
        return MaterialPageRoute(builder: (context) => NewPass());
      case "/splash":
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case "/login":
        return MaterialPageRoute(builder: (context) => Login());
      case "/register":
        return MaterialPageRoute(builder: (context) => Register());
      case "/home":
        return MaterialPageRoute(builder: (context) => Homepage());
    }
    return null;
  }
}
