import 'package:flutter/material.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

class LabelComponent extends StatelessWidget {
  final String labelText;
   LabelComponent({Key? key, required this.labelText}) : super(key: key);

  static const ProjectColors projectColors = ProjectColors();
  final Color grayColor = Color(projectColors.getColors(ColorsEnum.white_gray));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grayColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top:8, bottom: 8),
        child: Text(labelText, style: const TextStyle(
          fontSize: 10
        ),),
      ),
    );
  }
}
