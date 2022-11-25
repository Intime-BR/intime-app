import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intime_app/src/services/initial_screen_services.dart';

class CardInitialScreen extends StatefulWidget {
  const CardInitialScreen({super.key});

  @override
  State<CardInitialScreen> createState() => _CardInitialScreenState();
}

class _CardInitialScreenState extends State<CardInitialScreen> {
  Map<String, dynamic>? cardData = {};

  @override
  void initState() {
    super.initState();
    _getCardData();
  }

  _getCardData() async {
    cardData = await InitialScreenService().getDataCard();
    setState(() {
      cardData = cardData;
    });
  }

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
                      child: Text(
                        '${cardData?['aluno']['nome']}',
                        style: const TextStyle(
                          fontSize: 20,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(cardData != null
                        ? '${cardData?['aluno']['turma']} | ${cardData?['aluno']['matricula']}'
                        : '')
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
                    children: [
                      const Text('Última Presença',
                          style: TextStyle(
                            fontSize: 14.5,
                            overflow: TextOverflow.ellipsis,
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(cardData != null
                          ? '${cardData?['dataCard']['ultimaPresenca']}'
                          : ''),
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
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.circle,
                                size: 12,
                                color: Color(0xff4A9231),
                              ),
                            ),
                            TextSpan(
                              text: cardData != null
                                  ? ' ${cardData?['dataCard']['status']}'
                                  : '',
                              style: const TextStyle(
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
                    children: [
                      const Text('Faltas Diárias',
                          style: TextStyle(
                            fontSize: 14.5,
                            overflow: TextOverflow.ellipsis,
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(cardData != null
                          ? '${cardData?['dataCard']['faltasDiarias']}'
                          : ''),
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
