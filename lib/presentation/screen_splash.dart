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
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const LoginPage(),
                        ),
                      ); */
                      //Launch AlertDialog
                      _showLoadingDialog('Mensaje Informativo');
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

  Future<void> _showLoadingDialog(String title) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('¿Estas seguro de eliminar?'),
                Text('Si eliminas ya no podras recuperar.'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Text('Cancelar'),
              style: ButtonStyle(
                foregroundColor: MaterialStateColor.resolveWith(
                  (states) => const Color(0xFFF44336),
                ),
                overlayColor: MaterialStateColor.resolveWith(
                  (states) => const Color(0xFFEF9A9A),
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
