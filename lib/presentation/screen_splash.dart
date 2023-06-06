import 'package:flutter/material.dart';
import 'package:flutter_app_02/core/space.dart';
import 'package:flutter_app_02/core/text_style.dart';
import 'package:flutter_app_02/presentation/login_page.dart';
import 'package:flutter_app_02/widget/main_button.dart';
import '../core/colors.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: Colors.amberAccent,
            child: Image.asset(
              'assets/images/photo2.jpg',
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: gradients,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: 'Hola', style: headline),
                        TextSpan(
                          text: '.',
                          style: headlineDot,
                        )
                      ],
                    ),
                  ),
                  const SpaceVH(height: 20.0),
                  const Text(
                    'Watch your favorite movies or series on only one platform. you can watch it anytime and anywhere',
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  MainButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const LoginPage(),
                        ),
                      );
                    },
                    btnColor: blueButton,
                    text: 'Get Started',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
