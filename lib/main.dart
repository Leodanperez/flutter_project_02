import 'package:flutter/material.dart';
import 'package:flutter_app_02/presentation/screen_splash.dart';
import 'presentation/screen_booking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      routes: {
        '/': ((context) => const ScreenSplash()),
        '/booking': ((context) => const ScreenBooking())
      },
    );
  }
}
