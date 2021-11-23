import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme._();

  static const Color dropDown = Color(0xFF676767);
  static const Color SMBds = Color(0xFF617886);
  static const Color testq = Color(0xFF6BC700);
  static const Color abch = Color(0xFF52FF57);
  static const Color abc = Color(0xFFD7F5D8);
  static const Color welcomeTop = Color(0xFF142714);
  static const Color welcomeBottom = Color(0xFF0B1A0B);
  static const Color svdhs = Color(0xFF54CC58);
  static const Color boderColdod = Color(0xFF299F4D);
  static const Color textCol__ = Color(0xFFBDBFCC);
  static const Color textColorkk__ = Color(0xFFF8F8F8);
  static const Color textColorkk = Color(0xFF037A90);
  static const Color textColor_ = Color(0xFF2C324D);
  static const Color textColor = Color(0xFFB0BABF);
  static const Color popupBox = Color(0xFFEBEBEB);
  static const Color rewardText = Color(0xFF414246);
  static const Color organe = Color(0xFFFF8C00);
  static const Color backgroundBlack = Color(0xFF1F1F1F);
  static const Color redBackGround = Color(0xFF8D1010);
  static const Color casionTabBackgroud = Color(0xFF212020);
  static const Color casionDetailTop = Color(0xFF121212);
  static const Color casionTop = Color(0xFFCBD1CB);
  static const Color textLikeColor = Color(0xFFBAAE9F);
  static const Color pinCircleColor = Color(0xFFA019E2);
  static const Color communtiySubTitleCard = Color(0xFF53405F);
  static const Color infoColor = Color(0xFF2C9EFF);
  static const Color appBackgroundColor = Color(0xFF268028);
  static const Color gradientColorTop = Color(0xFF268028);
  static const Color gradientColorMid = Color(0xFF204E21);
  static const Color gradientColorLast = Color(0xFF071107);

  static const Color greenCasionTab = Color(0xFF125E0E);

  static const Color profileGradientRaitingEnd = Color(0xFF153E15);
  static const Color profileGradientRaitingStart = Color(0xFF0A5808);
  static const Color profileRatingYellow = Color(0xFFFFD802);

  static const Color mapGradientColorTop = Color(0xFF3D7200);
  static const Color mapGradientColorMid = Color(0xFF2B2B2B);
  static const Color mapGradientColorLast = Color(0xFF212121);
  static const Color communityBackground = Color(0xFFEFF2F1);
  static const Color greenTabSelected = Color(0xFF268028);
  static const Color casinoForums = Color(0xFF143613);

  static const communtiyGreenCard = Color(0xFF309A2B);
  static const Color tabBackgroundColor = Color(0xFF030303);
  static const Color appBarColor = Color(0xFF268028);
  static const Color darkButtonColor = Color(0xFF007804);
  static const Color profileText = Color(0xFF347632);
  static const Color primaryColor = Color(0xFF0E133F);
  static const Color secondaryColor = Color(0xFFFFD82E);
  static const Color textPrimary = Color(0xFF3C4152);
  static const Color textSecondary = Color(0xFF7D7D7D);
  static const Color textBorder = Color(0xFFD2D7DF);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color dividedCol = Color(0xFFC4C4C4);
  static const Color textBoxColor = Color(0xFF000029);
  static const Color facebookColor = Color(0xFF676DFF);
  static const Color black = Color(0xFF000000);
  static const Color catSelectedBack = Color(0xFF3E3A3C);

  static const Color darkSeeAll = Color(0xFF245F6B);
  static const Color profileCard = Color(0xFF2B313E);

  static const Color cardSerachResult = Color(0xFF2B2B2B);

  static const Color profileCardTitle = Color(0xFFBAC8EA);
  static const Color profileCardSubTitle = Color(0xFF198F9E);
  static const Color profileCardSubtoSubTitle = Color(0xFF9CB0E0);

  static const Color profileCardMaxMin = Color(0xFF373F4E);
  static const Color profileCardMin = Color(0xFF7CEFEC);
  static const Color mapDateCard = Color(0xFF818181);
  //static const Color dividedColor = Color(0xFF191A1D);

  static const Color catFliterBack = Color.fromRGBO(255, 216, 46, 1);
  static const Color redCol = Color(0xFFED5252);
  static const Color failRed = Color(0xFF8B0000);
  static const Color greenCol = Color(0xFF3AC759);
  //static const Color dividedCol = Color(0xFFC4C4C4);
  static const Color ratingCol = Color(0xFFEDE14C);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: appBackgroundColor,
    splashColor: primaryColor,
    brightness: Brightness.light,
    //textTheme: lightTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _title,
    subtitle1: _subTitleLight,
    //bodyText1: _greetingLight,
  );

  static final TextStyle _title = TextStyle(
    color: textPrimary,
    fontSize: 3.5,
    //fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: textPrimary,
    fontSize: 2,
    //fontSize: 2 * SizeConfig.textMultiplier,
  );
/*
  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
    fontSize: 2.3 * SizeConfig.textMultiplier,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);

  //static final TextStyle _subTitleDark = _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark = _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark = _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark = _searchDark.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark = _selectedTabDark.copyWith(color: Colors.white);

  static final TextStyle _unSelectedTabDark = _selectedTabDark.copyWith(color: Colors.white70);*/
}
