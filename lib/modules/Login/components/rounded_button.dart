import 'package:flutter/material.dart';
import 'package:untitled/modules/Login/services/login_service.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

class RoundedButton extends StatelessWidget {
  final action;
  final String label;
  static const ProjectColors projectColors = ProjectColors();
  static const LoginService loginService = LoginService();

  const RoundedButton({Key? key, required this.action, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        foregroundColor:
            Color(projectColors.getColors(ColorsEnum.defaultBlack)),
        backgroundColor: Color(projectColors.getColors(ColorsEnum.white)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
        textStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
      child: Text(label),
    );
  }
}
