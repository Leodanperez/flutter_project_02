import 'package:flutter/material.dart';

class ScreenImages extends StatelessWidget {
  const ScreenImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen Images',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Image(
              image: NetworkImage(
                'https://i.blogs.es/ceda9c/dalle/450_1000.jpg',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Image(
              image: NetworkImage(
                'https://i.blogs.es/ceda9c/dalle/450_1000.jpg',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Image(
              image: NetworkImage(
                'https://i.blogs.es/ceda9c/dalle/450_1000.jpg',
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          'Activar',
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.thumb_up,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
