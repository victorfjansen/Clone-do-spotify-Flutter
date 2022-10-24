enum ColorsEnum {
  primaryGreen,
  defaultBlack,
  white,
  white_gray,
}

class ProjectColors {
  const ProjectColors();
  int getColors(ColorsEnum color) {
    Map<ColorsEnum, int> colorsList = {
      ColorsEnum.primaryGreen: 0xFF1ED760,
      ColorsEnum.defaultBlack: 0xFF0B0909,
      ColorsEnum.white: 0xFFEFEFEF,
      ColorsEnum.white_gray: 0xFF222326,
    };
    return colorsList[color]!;
  }
}