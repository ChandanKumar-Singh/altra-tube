import 'package:altra_tube/widgets/constWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionServices {
  String tag = 'PermissionServices';
  Future<bool> getPermission(Permission permission) async {
    bool hasPermission = false;
    try {
      hasPermission = await permission.isGranted;
      if (!hasPermission) {
        var status = await permission.request();
        if (status.isGranted) {
          // showBanner(content: '$permission $status');
          showToast(msg: '${permission} ${status}');
        } else if (status.isDenied) {
          // showBanner(content: '$permission $status');
          showToast(msg: '${permission} ${status}');
        } else if (status.isPermanentlyDenied) {
          // showBanner(content: '$permission $status');
          showToast(msg: '${permission} ${status}');
        } else {
          // showBanner(content: '$permission $status');
          showToast(msg: '${permission} ${status}');
        }
      }
    } catch (e) {
      debugPrint('$tag  getPermission $permission $e');
    }
    return hasPermission;
  }
}
