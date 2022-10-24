import 'package:flutter/material.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

class SmallRoundedButton extends StatelessWidget {
  final action;
  final String label;
  static const ProjectColors projectColors = ProjectColors();

  final Color whiteColor = Color(projectColors.getColors(ColorsEnum.white));
  final Color blackColor = Color(projectColors.getColors(ColorsEnum.defaultBlack));

  SmallRoundedButton({Key? key, required this.action, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        foregroundColor:
        whiteColor,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color:whiteColor, width: 0.5),
          borderRadius: BorderRadius.circular(24),
        ),
        padding:
        const EdgeInsets.only(left: 15, right: 15),
        textStyle: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
      ),
      child: Text(label),
    );
  }
}
