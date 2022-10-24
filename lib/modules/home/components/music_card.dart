import 'package:flutter/material.dart';

import '../../../shared/models/enums/colors_enum.dart';

class MusicCard extends StatelessWidget {
  MusicCard({Key? key}) : super(key: key);

  static const ProjectColors projectColors = ProjectColors();
  final Color grayColor = Color(projectColors.getColors(ColorsEnum.white_gray));

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Container(
        margin: const EdgeInsets.only(top: 10),
        width: (MediaQuery.of(context).size.width / 2) - 25,
        height: 55,
        decoration: BoxDecoration(
            color: grayColor, borderRadius: BorderRadius.circular(3)),
        child: Row(children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(color: grayColor),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.asset(
                'assets/images/music-image1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
           Align(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                'Generic Music',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
