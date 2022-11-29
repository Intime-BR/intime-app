import 'package:flutter/material.dart';
import 'package:intime_app/src/utils/strings.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.09),
          Image.asset(
            'assets/images/error_image.png',
            width: screenWidth,
            height: screenHeight * 0.5,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              children: [
                Text(
                  notFoundTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  notFoundDescription,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: screenWidth * 0.5,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            width: 1, color: Color.fromRGBO(39, 52, 182, 0.5)),
                        backgroundColor: const Color(0xffF8F8F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Voltar',
                        style:
                            TextStyle(color: Color.fromRGBO(39, 52, 182, 0.5)),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
