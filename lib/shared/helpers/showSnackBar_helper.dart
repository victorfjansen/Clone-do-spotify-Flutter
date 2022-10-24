import 'package:flutter/material.dart';

SnackBar _getSnackBar({required String message}) {
  return const SnackBar(
    content: Text(
      'Login ou senha inválidos, tente novamente',
    ),
    behavior: SnackBarBehavior.floating,
  );
}

void showSnackBar({required String message, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(_getSnackBar(message: message));
}
