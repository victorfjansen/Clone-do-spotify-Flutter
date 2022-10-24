import 'package:flutter/material.dart';
import 'package:untitled/modules/home/bloc/home_bloc.dart';
import 'package:untitled/modules/home/components/Bottom_navigation.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

import '../components/Music_slider.dart';
import '../components/header.dart';
import '../components/label.dart';
import '../components/music_grid.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const ProjectColors projectColors = ProjectColors();
  final Color blackColor =
      Color(projectColors.getColors(ColorsEnum.defaultBlack));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        bottomNavigationBar: const BottomNavigation(),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderComponent(),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 195,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LabelComponent(labelText: 'Músicas',),
                        LabelComponent(labelText: 'Podcasts e mais',)
                      ],
                    ),
                  ),
                  const MusicGrid(),
                  MusicSlider(title: 'Podcasts que talvez você curta',),
                  MusicSlider(title: 'Seus mixes mais ouvidos',),
                  MusicSlider(title: 'Tocados recentemente',),
                ],
              ),
            ),
          ),
        ));
  }
}
