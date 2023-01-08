
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:photo_manager/photo_manager.dart';

bool isOnline = false;



Future<List<File>> getFutureFile(List<AssetEntity> entities) async {
  List<File> list = [];
  for (var element in entities) {
    var file = await element.file;
    if (file != null) {
      list.add(file);
    }
  }
  return list;
}

Future<Uint8List?> getThumbnail(AssetEntity entity) {
  return entity.thumbnailData;
}

Future<File?> getFile(AssetEntity entity) {
  return entity.file;
}

// void connectionSetup() async {
//   var connection = await Connectivity().checkConnectivity();
//   isOnline = connection != ConnectivityResult.none;
//
//   Connectivity().onConnectivityChanged.listen((event) {
//     isOnline = event != ConnectivityResult.none;
//     debugPrint(' now we are online $isOnline');
//     showNetWorkToast();
//   });
// }

void showNetWorkToast({String? msg}) {
  if (!isOnline) {
    Fluttertoast.showToast(
        msg: msg ??
            " ${isOnline ? "👍" : "🤦‍♂️"} You are  ${isOnline ? "Online back" : "Offline now"}",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: isOnline
            ? Colors.green.withOpacity(0.5)
            : Colors.red.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}