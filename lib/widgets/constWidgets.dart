import 'package:altra_tube/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

Widget cusWidth5([double? width]) {
  return SizedBox(width: width ?? lessPadding);
}

Widget cusWidth10([double? width]) {
  return SizedBox(width: width ?? mediumPadding);
}

Widget cusWidth15([double? width]) {
  return SizedBox(width: width ?? maxPadding);
}

Widget cusHeight1([double? height]) {
  return SizedBox(height: height ?? lessPadding);
}

Widget cusHeight10([double? height]) {
  return SizedBox(height: height ?? mediumPadding);
}

Widget cusHeight15([double? height]) {
  return SizedBox(height: height ?? maxPadding);
}

Widget outButton(
    {double? height, required VoidCallback onTap, required Widget child}) {
  return SizedBox(
    height: height,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.amber),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5 * maxPadding),
        ),
      ),
      onPressed: () async {
        HapticFeedback.vibrate();
        onTap();
      },
      child: child,
    ),
  );
}

void showBanner({required String content}) {
  ScaffoldMessenger.of(Get.context!).showMaterialBanner(
    MaterialBanner(
      padding: const EdgeInsets.all(20),
      content: Text(content),
      leading: const Icon(Icons.agriculture_outlined),
      backgroundColor: Colors.green,
      actions: <Widget>[
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(Get.context!).clearMaterialBanners();
          },
          child: b1Text('DISMISS', color: Colors.black),
        ),
      ],
    ),
  );
}

void showToast({required String msg,Color?color,ToastGravity?gravity}) {
  Fluttertoast.showToast(
    msg: msg,
    backgroundColor: color,
    gravity: gravity??ToastGravity.TOP,

  );
}
