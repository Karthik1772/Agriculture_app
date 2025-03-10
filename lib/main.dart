import 'package:flutter/material.dart';
import 'package:llm/core/routes/generated_routes.dart';
import 'package:llm/core/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      onGenerateRoute: Routes.onGenerate,
      initialRoute: "/splash",
    );
  }
}
