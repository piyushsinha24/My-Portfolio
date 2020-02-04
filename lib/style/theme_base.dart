import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData buildBaseAppTheme(BuildContext context, Brightness brightness) {
  Color textColor = brightness == Brightness.light ? kTextColor_Light : kColorWhite;

  ThemeData base = Theme.of(context).copyWith(
    textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'GoogleSans',
          bodyColor: textColor,
          decorationColor: kColorGrayDark,
          displayColor: textColor,
        ),
  );

  return base.copyWith(
    brightness: brightness,
    platform: defaultTargetPlatform == TargetPlatform.iOS ? TargetPlatform.iOS : TargetPlatform.android,
    accentColor: brightness == Brightness.light ? kColorGreen : kColorSecondary_Dark,
    accentColorBrightness: Brightness.dark,
    scaffoldBackgroundColor: brightness == Brightness.light ? kColorBackground_Light : kColorBackground_Dark,
    backgroundColor: brightness == Brightness.light ? kColorBackground_Light : kColorBackground_Dark,
    primaryColor: brightness == Brightness.light ? kColorPrimary : kColorPrimary_Dark,
    primaryColorDark: kColorPrimaryDark,
    primaryColorLight: kColorPrimaryLight,
    errorColor: kColorRed,
    toggleableActiveColor: kColorBlueDark,
    disabledColor: kColorGrayLight,
    unselectedWidgetColor: kColorGray,
    highlightColor: kColorTransparent,
    textSelectionColor: kColorYellowLightA1,
    bottomAppBarColor: kColorWhite,
    hintColor: kColorGray,
    splashColor: kColorGrayBareA1,
    cardColor: brightness == Brightness.light ? kColorWhite : kColorSurface_Dark,
    canvasColor: brightness == Brightness.light ? kColorTransparent : kColorBackground_Dark,
    dividerColor: kColorGrayLight,
    cursorColor: kColorYellowDark,
    buttonColor: kColorBlueDark,
    indicatorColor: kColorGrayLight,
    inputDecorationTheme: base.inputDecorationTheme,
    iconTheme: brightness == Brightness.light ? base.iconTheme.copyWith(color: kColorBlack) : base.iconTheme.copyWith(color: kColorWhite),
    accentIconTheme: base.accentIconTheme.copyWith(color: kColorWhite),
    primaryIconTheme: base.primaryIconTheme.copyWith(color: kColorWhite),
    dialogBackgroundColor: brightness == Brightness.light ? kColorBackground_Light : kColorBackground_Dark,
    accentTextTheme: base.accentTextTheme.copyWith(
      button: base.accentTextTheme.button.copyWith(color: kColorWhite),
      title: base.accentTextTheme.button.copyWith(color: kColorWhite),
      body1: base.accentTextTheme.button.copyWith(color: kColorWhite),
    ),
    textTheme: base.textTheme.copyWith(
        // MD-headline1
        display4: base.textTheme.display4.copyWith(color: textColor, fontWeight: FontWeight.w700),

        // MD-headline2
        display3: base.textTheme.display3.copyWith(color: textColor, fontWeight: FontWeight.w500),

        // MD-headline3
        display2: base.textTheme.display2.copyWith(color: textColor, fontWeight: FontWeight.w700),

        // MD-headline4
        display1: base.textTheme.display1.copyWith(color: textColor, fontWeight: FontWeight.w500),

        // MD-headline5
        headline: base.textTheme.headline.copyWith(color: textColor, fontWeight: FontWeight.w500),

        // MD-headline6
        title: base.textTheme.title.copyWith(color: textColor, fontWeight: FontWeight.w700),

        // MD-subtitle1
        subhead: base.textTheme.subhead.copyWith(color: textColor, fontWeight: FontWeight.w400),

        // MD-body1
        body2: base.textTheme.body2.copyWith(color: textColor, fontWeight: FontWeight.w700),

        // MD-body2
        body1: base.textTheme.body1.copyWith(color: textColor, fontWeight: FontWeight.w400),

        // MD-caption
        caption: base.textTheme.caption.copyWith(color: textColor, fontWeight: FontWeight.w400),

        // MD-button
        button: base.textTheme.button.copyWith(color: textColor, fontWeight: FontWeight.w500),

        // MD-subtitle2
        subtitle: base.textTheme.subtitle.copyWith(color: textColor, fontWeight: FontWeight.w500),

        // MD-overline
        overline: base.textTheme.overline.copyWith(color: textColor, fontWeight: FontWeight.w400, letterSpacing: 0.5)),
    primaryTextTheme: base.primaryTextTheme.copyWith(

        // MD-headline1
        display4: base.primaryTextTheme.display4.copyWith(color: kColorWhite, fontWeight: FontWeight.w700),

        // MD-headline2
        display3: base.primaryTextTheme.display3.copyWith(color: kColorWhite, fontWeight: FontWeight.w500),

        // MD-headline3
        display2: base.primaryTextTheme.display2.copyWith(color: kColorWhite, fontWeight: FontWeight.w700),

        // MD-headline4
        display1: base.primaryTextTheme.display1.copyWith(color: kColorWhite, fontWeight: FontWeight.w500),

        // MD-headline5
        headline: base.primaryTextTheme.headline.copyWith(color: kColorWhite, fontWeight: FontWeight.w500),

        // MD-headline6
        title: base.primaryTextTheme.title.copyWith(color: kColorWhite, fontWeight: FontWeight.w700),

        // MD-subtitle1
        subhead: base.primaryTextTheme.subhead.copyWith(color: kColorWhite, fontWeight: FontWeight.w400),

        // MD-body1
        body2: base.primaryTextTheme.body2.copyWith(
          color: kColorWhite,
          fontWeight: FontWeight.w700,
        ),

        // MD-body2
        body1: base.textTheme.body1.copyWith(
          color: kColorWhite,
          fontWeight: FontWeight.w400,
        ),

        // MD-caption
        caption: base.primaryTextTheme.caption.copyWith(color: kColorWhite, fontWeight: FontWeight.w400),

        // MD-button
        button: base.primaryTextTheme.button.copyWith(color: kColorWhite, fontWeight: FontWeight.w500),

        // MD-subtitle2
        subtitle: base.primaryTextTheme.subtitle.copyWith(color: kColorWhite, fontWeight: FontWeight.w500),

        // MD-overline
        overline: base.primaryTextTheme.overline.copyWith(color: kColorWhite, fontWeight: FontWeight.w400)),
    chipTheme: base.chipTheme.copyWith(
      backgroundColor: kColorGrayBare,
      disabledColor: kColorGrayLighter,
      selectedColor: kColorGrayDark,
      secondarySelectedColor: kColorOrangeDark,
      labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
      padding: EdgeInsets.all(0.0),
      shape: StadiumBorder(),
      labelStyle: TextStyle(color: kColorGrayDark, fontSize: 15),
      secondaryLabelStyle: TextStyle(color: kColorGrayDark),
      brightness: Brightness.dark,
    ),
    buttonTheme: ButtonThemeData(
      highlightColor: kColorTransparent,
      splashColor: kColorGrayBareA1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
      colorScheme: base.buttonTheme.colorScheme.copyWith(
        primary: base.primaryColor,
        primaryVariant: base.primaryColorDark,
        secondary: kColorSecondary1,
        secondaryVariant: kColorSecondary1Dark,
        surface: base.primaryColor,
        onSurface: kColorWhite,
        brightness: brightness,
        onSecondary: kColorWhite,
        onPrimary: kColorWhite,
        onError: kColorWhite,
        onBackground: kColorBlack,
        error: base.errorColor,
        background: kColorGrayLight,
      ),
    ),
    colorScheme: base.colorScheme.copyWith(
      onPrimary: kColorWhite,
      background: brightness == Brightness.light ? kColorWhite : kColorBlack,
      brightness: brightness,
      error: kColorError,
      onBackground: brightness == Brightness.light ? kColorBlack : kColorWhite,
      onError: kColorWhite,
      onSecondary: kColorWhite,
      primary: kColorBlue,
      primaryVariant: kColorBlueDark,
      secondary: kColorOrange,
      secondaryVariant: kColorOrangeDark,
      surface: kColorWhite,
      onSurface: kColorGrayDark,
    ),
    bottomAppBarTheme: base.bottomAppBarTheme.copyWith(
      color: brightness == Brightness.light ? kColorWhite : kColorBlack,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      color: brightness == Brightness.light ? kColorBlack : kColorWhite,
      elevation: 0.0,
    ),
  );
}
