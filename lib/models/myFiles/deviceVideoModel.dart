import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class DeviceVideoModel {
  final String? id;
  final String? title;
  final Uint8List? thumnail;
  final int? duration;
  final Size? size;
  final String? path;
  final File? file;
  DeviceVideoModel(
      {this.id,
      this.title,
      this.thumnail,
      this.duration,
      this.size,
      this.path,
      this.file});
}
