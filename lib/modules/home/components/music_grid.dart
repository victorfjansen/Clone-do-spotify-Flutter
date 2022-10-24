import 'package:flutter/material.dart';
import 'package:untitled/modules/home/components/music_card.dart';

class MusicGrid extends StatelessWidget {
  const MusicGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15),
      child: SizedBox(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MusicCard(),
                  MusicCard(),
                  MusicCard(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MusicCard(),
                  MusicCard(),
                  MusicCard(),
                ],
              ),
        ]),
      ),
    );
  }
}
