import 'package:flutter/material.dart';
import 'package:intime_app/src/components/card_initial_screen.dart';
import 'package:intime_app/src/components/side_nav.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 238, 238),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CardInitialScreen(),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
              child: Container(
                width: screenWidth,
                decoration: BoxDecoration(
                    color: const Color(0xff949DED),
                    borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                  padding: const EdgeInsets.all(2),
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  controller: tabController,
                  labelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Horário Escolar',
                    ),
                    Tab(
                      text: 'Horário do Dia',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: screenHeight * 0.35,
              child: TabBarView(
                controller: tabController,
                children: [
                  DataTable(columnSpacing: 30, columns: const [
                    DataColumn(
                      label: Text('Horarios'),
                    ),
                    DataColumn(
                      label: Text('Segunda'),
                    ),
                    DataColumn(
                      label: Text('Terça'),
                    )
                  ], rows: [
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                  ]),
                  DataTable(columnSpacing: 30, columns: const [
                    DataColumn(
                      label: Text('Horarios'),
                    ),
                    DataColumn(
                      label: Text('Matéria'),
                    ),
                    DataColumn(
                      label: Text('Status'),
                    )
                  ], rows: [
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(Text('7:20 | 8:10')),
                        const DataCell(Text('Matemática')),
                        DataCell(RichText(
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
                        )),
                      ],
                    ),
                  ])
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
              child: SizedBox(
                width: screenWidth,
                height: 50,
                child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/initial-screen'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6470E8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Entrar agora')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
