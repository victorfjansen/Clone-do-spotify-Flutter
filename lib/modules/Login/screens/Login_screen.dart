import 'package:flutter/material.dart';
import 'package:untitled/modules/Login/components/rounded_button.dart';
import 'package:untitled/modules/Login/components/small_rounded_button.dart';
import 'package:untitled/modules/Login/services/login_service.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

import '../../../shared/helpers/NavigateByName_helper.dart';
import '../bloc/Login_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final LoginBloc loginBloc = LoginBloc();
  static const ProjectColors projectColors = ProjectColors();

  final Color whiteColor = Color(projectColors.getColors(ColorsEnum.white));
  final Color blackColor =
      Color(projectColors.getColors(ColorsEnum.defaultBlack));

  final _formKey = GlobalKey<FormState>();

  String? textFieldValidator({String? value, required String message}) {
    if (value != null && value.isEmpty) return message;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    loginBloc.automaticAuth(context: context);
    return Scaffold(
        backgroundColor: blackColor,
        appBar: AppBar(
          backgroundColor: blackColor,
          leading: GestureDetector(
            onTap: () => navigateByName(context: context, routeName: '/initial-screen'),
            child: const SizedBox(
                width: 20, height: 20, child: Icon(Icons.arrow_back_ios)),
          ),
          title: Center(
            child: Container(
              margin: const EdgeInsets.only(right: 50),
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: 320,
                child: Column(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 4),
                            child: const Text(
                              'E-mail ou nome de usuário',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          StreamBuilder(
                            stream: loginBloc.emailStream,
                            builder: (context, snapshot) => TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) => textFieldValidator(
                                  value: value,
                                  message: 'Preencha com um email válido!'),
                              onChanged: (text) {
                                loginBloc.emailController.add(text);
                              },
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                'Senha',
                                style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            StreamBuilder(
                              stream: loginBloc.passwordStream,
                              builder: (context, snapshot) => TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value) => textFieldValidator(
                                    value: value,
                                    message: 'Preencha com uma senha válida!'),
                                onChanged: (text) {
                                  loginBloc.passwordController.add(text);
                                },
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 8,
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          RoundedButton(
                              action: () =>
                                  loginBloc.authenticateUser(formKey: _formKey, context: context),
                              label: 'Entrar'),
                          Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: SmallRoundedButton(
                                  action: () => {}, label: 'Entrar sem senha'))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
