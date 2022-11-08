import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intime_app/src/utils/strings.dart';

class LadingPage extends StatelessWidget {
  const LadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    LinearGradient linearGradient = const LinearGradient(
      colors: [
        Color.fromARGB(126, 78, 92, 249),
        Color.fromRGBO(39, 52, 182, 0.8),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xffFFFFFF),
          body: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.61,
                decoration: BoxDecoration(
                  color: const Color(0xff17192E),
                  border: Border.all(
                      width: 18,
                      color: const Color(0xff17192E),
                      style: BorderStyle.solid,
                      strokeAlign: StrokeAlign.center),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/images/logo_landing.png',
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Image.asset(
                        'assets/images/boneco.png',
                        width: screenWidth,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: const Color(0xffFFFFFF),
                  child: Column(
                    children: [
                      Text(
                        landingPageTitle,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12.0, top: 8.0),
                        child: Text(
                          landingPageDescription,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          gradient: linearGradient,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ElevatedButton(
                          onPressed: () => debugPrint('NEXT'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            size: 27,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
