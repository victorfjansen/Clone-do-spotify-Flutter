import 'package:flutter/material.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

import 'big_music_card.dart';

class MusicSlider extends StatelessWidget {
  final String title;

  MusicSlider({Key? key, required this.title}) : super(key: key);
  static const ProjectColors projectColors = ProjectColors();
  final Color grayColor = Color(projectColors.getColors(ColorsEnum.white_gray));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigMusicCard(),
                    BigMusicCard(),
                    BigMusicCard(),
                    BigMusicCard(),
                    BigMusicCard(),
                    BigMusicCard(),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
