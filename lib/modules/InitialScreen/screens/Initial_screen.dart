import 'package:flutter/material.dart';

import '../components/extended_button.dart';
import '../models/enums/CustomIcons_model.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover,
                    opacity: 1)),
          ),
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black,
                Colors.transparent,
              ],
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(bottom: 20),
                child: Image.asset(
                  'assets/images/spotfy-icon.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                child: Center(
                  child: Column(
                    children: const [
                      Text(
                        'Milhões de músicas à sua escolha.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.3),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Grátis no Spotfy.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: const [
                    ExtendedButton(
                      label: 'Inscreva-se grátis',
                      greenBackground: true,
                      noBorder: true,
                    ),
                    ExtendedButton(
                      label: 'Continuar com um número de telefone',
                      icon: CustomIcons.smartphone,
                    ),
                    ExtendedButton(
                        label: 'Continuar com o Google',
                        icon: CustomIcons.google),
                    ExtendedButton(
                        label: 'Continuar com o Facebook',
                        icon: CustomIcons.facebook),
                    ExtendedButton(
                        label: 'Continuar com a Apple',
                        icon: CustomIcons.apple),
                    ExtendedButton(
                      label: 'Entrar',
                      noBorder: true,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
