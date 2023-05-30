import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Image.asset('assets/images/taxi.png'),
        ),
        const Text(
          'E-Hailing Service',
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Welcome! Take a ride to your destination with the cheaspet fare',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                '+51-999344455',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 80),
        Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.amber[600],
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              'Book a ride',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Text(
          'More',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        )
      ],
    );
  }
}
