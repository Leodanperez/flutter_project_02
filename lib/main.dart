import 'package:flutter/material.dart';
import 'presentation/screen_booking.dart';
import 'presentation/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/booking',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      routes: {
        '/': ((context) => const ScreenHome()),
        '/booking': ((context) => const ScreenBooking())
      },
    );
  }
}
