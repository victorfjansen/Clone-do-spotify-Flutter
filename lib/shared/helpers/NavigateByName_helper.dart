import 'package:flutter/material.dart';

void navigateByName({required BuildContext context, required String routeName}) {
  Navigator.of(context).pushReplacementNamed(routeName);
}