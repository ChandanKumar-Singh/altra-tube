import 'package:flutter/material.dart';
import 'package:get/get.dart';

const IconData currency_rupee_outlined =
IconData(0xf05db, fontFamily: 'MaterialIcons');

Text h6Text(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.headline6!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}

Text h5Text(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.headline5!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}

Text h4Text(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.headline4!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}

Text h3Text(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.headline3!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}

Text h2Text(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.headline2!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}

Text h1Text(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.headline1!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}

Text b1Text(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.bodyText1!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}

Text capText(String title,
    {Color? color,
      String? fontFamily,
      TextAlign? textAlign,
      TextStyle? style,
      TextOverflow? overflow,
      int? maxLine,
      FontWeight? fontWeight}) {
  return Text(
    title,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: style ??
        Theme.of(Get.context!).textTheme.caption!.copyWith(
            color: color, fontFamily: fontFamily, fontWeight: fontWeight),
  );
}
