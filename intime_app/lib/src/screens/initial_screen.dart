import 'package:flutter/material.dart';
import 'package:intime_app/src/components/card_initial_screen.dart';
import 'package:intime_app/src/components/side_nav.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      drawer: Container(
        width: screenWidth * 0.65,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff949DED),
              offset: Offset(14, 0), // changes position of shadow
            ),
          ],
        ),
        child: const SideNav(),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff323232)),
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.notifications_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [CardInitialScreen()],
      ),
    );
  }
}
