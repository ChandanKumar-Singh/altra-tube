
import 'dart:io';
import 'dart:typed_data';

import 'package:photo_manager/photo_manager.dart';

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