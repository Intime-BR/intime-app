import 'package:flutter/material.dart';
import 'dart:math' as math;

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    Color purple = const Color(0xff6470E8);
    Color orange = const Color(0xffFF9A51);
    Color green = const Color(0Xff5CE2E2);
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;

    return Drawer(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: purple, borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.history, color: Colors.white, size: 18),
            ),
            title: const Text("Histórico de presença"),
            onTap: () {
              Navigator.pushNamed(context, '/lasjdklsa');
            },
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.calendar_today_sharp,
                  color: Colors.white, size: 18),
            ),
            title: const Text("Horários"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: purple, borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.notifications_outlined,
                  color: Colors.white, size: 18),
            ),
            title: const Text("Notificações"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(8)),
              child:
                  const Icon(Icons.sync_rounded, color: Colors.white, size: 18),
            ),
            title: const Text("Sincronizar dados"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: green, borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.build, color: Colors.white, size: 16),
            ),
            title: const Text("Configurações"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: purple, borderRadius: BorderRadius.circular(8)),
              child:
                  const Icon(Icons.sms_outlined, color: Colors.white, size: 18),
            ),
            title: const Text("Sugestões"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purple, borderRadius: BorderRadius.circular(8)),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: const Icon(Icons.keyboard_tab,
                          color: Colors.white, size: 18),
                    ),
                  ),
                  title: const Text("Sair da conta"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
