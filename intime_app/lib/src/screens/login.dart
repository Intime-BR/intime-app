import 'package:flutter/material.dart';
import 'package:intime_app/src/components/base_input.dart';
import 'package:intime_app/src/services/login_services.dart';
import 'package:intime_app/src/utils/strings.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final matriculaController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  void dispose() {
    matriculaController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    LoginService loginService = LoginService();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xffFAFAFA)),
            width: screenWidth,
            height: screenHeight * 0.80,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 65,
                          child: Image.asset('assets/images/logo_roxa.png'),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          loginPageTitle,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Column(
                          children: [
                            BaseInput(
                                controller: matriculaController,
                                placeHolder: 'Matrícula:'),
                            const SizedBox(
                              height: 20,
                            ),
                            BaseInput(
                                controller: senhaController,
                                placeHolder: 'Senha:'),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: screenWidth,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () async => {
                                        await loginService.validateUser(
                                                matriculaController.text,
                                                senhaController.text)
                                            ? Navigator.of(context)
                                                .pushNamed('/initial-screen')
                                            : Navigator.of(context)
                                                .pushNamed('/login')
                                      },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff6470E8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Text('Entrar agora')),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Esqueci minha senha?')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff17192E),
                border: Border.all(
                    width: 60,
                    color: const Color(0xff17192E),
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.center),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(200),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
