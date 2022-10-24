import 'package:flutter/material.dart';
import 'package:untitled/shared/helpers/NavigateByName_helper.dart';

import '../models/enums/CustomIcons_model.dart';

class ExtendedButton extends StatelessWidget {
  final String label;
  final CustomIcons? icon;
  final bool? greenBackground;
  final bool? noBorder;
  static const String assetPath = 'assets/images';

  const ExtendedButton(
      {Key? key,
      required this.label,
      this.icon,
      this.greenBackground,
      this.noBorder})
      : super(key: key);

  String _getCustomIcon(CustomIcons? icon) {
    final Map<CustomIcons, String> customIconsObj = {
      CustomIcons.apple: '$assetPath/${CustomIcons.apple.name}-icon.png',
      CustomIcons.facebook: '$assetPath/${CustomIcons.facebook.name}-icon.png',
      CustomIcons.google: '$assetPath/${CustomIcons.google.name}-icon.png',
      CustomIcons.smartphone:
          '$assetPath/${CustomIcons.smartphone.name}-icon.png',
    };
    return customIconsObj[icon]!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      width: 320,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: noBorder == null
                      ? const BorderSide(color: Colors.white54)
                      : const BorderSide(color: Colors.transparent))),
              backgroundColor: greenBackground != null
                  ? const MaterialStatePropertyAll(Color(0xFF1ED760))
                  : const MaterialStatePropertyAll(Colors.transparent),
              shadowColor: const MaterialStatePropertyAll(Colors.transparent)),
          onPressed: () =>
              navigateByName(context: context, routeName: '/login-screen'),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Text(label,
                          style: TextStyle(
                              fontSize: 10,
                              height: 2,
                              color: greenBackground == true
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: greenBackground == true
                                  ? FontWeight.bold
                                  : FontWeight.normal)),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(top: 3),
                      child: icon != null
                          ? Image.asset(_getCustomIcon(icon))
                          : null,
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
