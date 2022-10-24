import 'package:flutter/material.dart';
import 'package:untitled/shared/helpers/NavigateByName_helper.dart';
import 'package:untitled/shared/models/enums/colors_enum.dart';

import '../bloc/home_bloc.dart';

class HeaderComponent extends StatelessWidget {
   HeaderComponent({Key? key}) : super(key: key);
  static const ProjectColors projectColors = ProjectColors();
  final Color whiteColor = Color(projectColors.getColors(ColorsEnum.white));

   final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Boa tarde', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        SizedBox(
          width: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.add_alert_outlined, color: whiteColor ),
              Container(margin:const EdgeInsets.only(left: 12), child: Icon(Icons.lock_clock, color: whiteColor, )),
              IconButton(onPressed: () async {
                await homeBloc.turnOf(context: context);
              }, icon: Icon(Icons.engineering_outlined, color: whiteColor ), ),
            ],
          ),
        ),
      ],
    );
  }
}
