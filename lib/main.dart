import 'package:cv/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      theme: ThemeData(
        primaryColor: const Color(0xFF8E4585), 
        scaffoldBackgroundColor: const Color(0xFFFFF5E6), 
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF8E4585), 
          secondary: const Color(0xFF4A6FA5), 
          background: const Color(0xFFFFF5E6), 
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8E4585),
          elevation: 0,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(color: Color(0xFF4A6FA5)),
          bodyLarge: TextStyle(color: Color(0xFF333333)),
          bodyMedium: TextStyle(color: Color(0xFF555555)),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

