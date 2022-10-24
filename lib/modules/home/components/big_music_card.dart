import 'package:flutter/material.dart';

import '../../../shared/models/enums/colors_enum.dart';

class BigMusicCard extends StatelessWidget {
  BigMusicCard({Key? key}) : super(key: key);

  static const ProjectColors projectColors = ProjectColors();
  final Color grayColor = Color(projectColors.getColors(ColorsEnum.white_gray));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 150,
            height: 150,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/music-cover.jpg',
                fit: BoxFit.cover,
              ),
            )),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               Text(
                'Think Fast, Task Smart',
                style: TextStyle(fontSize: 13),
              ),
                Text(
                 'Show - Generic Place',
                 style: TextStyle(fontSize: 10, color: Colors.white54),
               )
            ],
          ),
        )
      ],
    );
  }
}
