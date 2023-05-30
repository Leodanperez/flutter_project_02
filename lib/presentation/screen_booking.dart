import 'package:flutter/material.dart';

class ScreenBooking extends StatelessWidget {
  const ScreenBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Booking',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber[600],
        elevation: 0,
        toolbarHeight: 100,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Column(
        children: [
          Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Icon(Icons.location_searching_outlined),
                SizedBox(
                  width: 20,
                ),
                Text('Hola')
              ],
            ),
          )
        ],
      ),
    );
  }
}
