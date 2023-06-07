import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  // Template Color
  static const Color kNeutral0 = Color(0xffFFFFFF);
  static const Color kNeutral100 = Color(0xffF8F9FC);
  static const Color kNeutral200 = Color(0xffF1F3F9);
  static const Color kNeutral300 = Color(0xffE1E6EF);
  static const Color kNeutral700 = Color(0xff3F444D);
  static const Color kNeutral800 = Color(0xff23272F);
  static const Color kNeutral900 = Color(0xff1B1F27);
  static const Color kNeutral1000 = Color(0xff0A0D14);
  static const Color kPrimary100 = Color(0xffF0F5FF);
  static const Color kPrimary700 = Color(0xff2F6FED);
  static const Color kPrimary800 = Color(0xff1D5BD6);
  static const Color kPrimary900 = Color(0xff1D5BD6);
  static const Color kSecondary100 = Color(0xffF8F5FF);
  static const Color kSecondary700 = Color(0xff8B54F7);
  static const Color kSecondary800 = Color(0xff6D35DE);
  static const Color kSecondary900 = Color(0xff5221B5);
  static const Color kSuccess100 = Color(0xffEDFDF8);
  static const Color kSuccess700 = Color(0xff34DC75);
  static const Color kSuccess800 = Color(0xff04724D);
  static const Color kSuccess900 = Color(0xff066042);
  static const Color kWarning100 = Color(0xffFFF8EB);
  static const Color kWarning700 = Color(0xffB35E09);
  static const Color kWarning800 = Color(0xff96530F);
  static const Color kWarning900 = Color(0xff80460D);
  static const Color kDanger100 = Color(0xffFEF1F2);
  static const Color kDanger700 = Color(0xffE02D3C);
  static const Color kDanger800 = Color(0xffBA2532);
  static const Color kDanger900 = Color(0xff981B25);
  static const Color kTextIconBlackPrimary = Color(0xff1D2433);
  static const Color kTextIconBlackSecondary = Color(0xff4A505C);
  static const Color kTextIconBlackDisabled = Color(0xff6C707A);
  static const Color kTextIconWhitePrimary = kNeutral0;
  static const Color kTextIconWhiteSecondary = Color(0xffC1C2C4);
  static const Color kTextIconWhiteDisabled = Color(0xff9D9EA1);

  // App Color
  static const Color kBlackApp = Color(0xff212832);
  static const Color kWhite = kNeutral0;
  static const Color kBlack = Color(0xff000000);
  static const Color kGreenBg = Color(0xff2DEABF);
  static const Color kPrimaryBg = Color(0xff1CB25B);
  static const Color kShadow = Color.fromRGBO(0, 0, 0, 0.05);
  static const Color kProductShadow = Color.fromRGBO(104, 117, 130, 0.05);
  static const Color kTextSecondary = Color(0xff49516F);
  static const Color kTextThird = Color(0xff797c82);
  static const Color kGreenGradient1 = Color(0xff1CB25B);
  static const Color kGreenGradient2 = Color(0xff20B598);
  static const Color kBorderDefault = Color(0xffbababa);
  static const Color kBorderWaiting = Color(0xffE1E6EF);
  static const Color kTextViewMore = Color(0xff7F7F7F);
  static const Color kGreyLight = Color(0xffF6F6F6);
  static const Color kBgImageBlank = Color(0xffF2F2F2);
  // static const Color kPrimary = Color(0xffF1F3F9);
  // Loading Skeleton
  static const Color kLoadingItem = Color(0xff1CB25B);
  static List<Color> kLoadingBlock = <Color>[
    AppColors.kGreenGradient1.withOpacity(0.5),
    AppColors.kGreenGradient2.withOpacity(0.5),
  ];
  // Gradient
  static const List<Color> kTextGradient = <Color>[
    AppColors.kGreenGradient1,
    AppColors.kGreenGradient2,
  ];
  static const List<Color> kDefaultBorderGradient = <Color>[
    AppColors.kNeutral300,
    AppColors.kNeutral300,
  ];
  static const List<Color> kWhiteGradient = <Color>[
    AppColors.kNeutral0,
    AppColors.kNeutral0,
  ];
  static const List<Color> kSecondaryGradient = <Color>[
    AppColors.kTextSecondary,
    AppColors.kTextSecondary,
  ];
}
