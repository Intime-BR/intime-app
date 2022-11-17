import 'package:flutter/material.dart';

class CardInitialScreen extends StatefulWidget {
  const CardInitialScreen({super.key});

  @override
  State<CardInitialScreen> createState() => _CardInitialScreenState();
}

class _CardInitialScreenState extends State<CardInitialScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.20,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
              spreadRadius: 2,
              offset: const Offset(3, 3), // changes position of shadow
            ),
          ]),
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.6,
                      child: const Text(
                        'Estevão Boaventura Almeida',
                        style: TextStyle(
                          fontSize: 20,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text('3B1 | 12002097')
                  ],
                ),
                Flexible(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 1.5,
              color: Color(0xffD1CFCF),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Text('Última Presença',
                          style: TextStyle(
                            fontSize: 14.5,
                            overflow: TextOverflow.ellipsis,
                          )),
                      SizedBox(
                        height: 6,
                      ),
                      Text('5'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                  child: VerticalDivider(
                    color: Color(0xffD1CFCF),
                    width: 8,
                    thickness: 1.5,
                    endIndent: 0,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Status do Dia',
                        style: TextStyle(
                          fontSize: 14.5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.circle,
                                size: 12,
                                color: Color(0xff4A9231),
                              ),
                            ),
                            TextSpan(
                              text: ' Presente',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                  child: VerticalDivider(
                    color: Color(0xffD1CFCF),
                    width: 8,
                    thickness: 1.5,
                    endIndent: 0,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text('Faltas Diárias',
                          style: TextStyle(
                            fontSize: 14.5,
                            overflow: TextOverflow.ellipsis,
                          )),
                      SizedBox(
                        height: 6,
                      ),
                      Text('5'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
