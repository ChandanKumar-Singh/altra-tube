import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCachedNetworkImage({required String imageUrl}) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    imageBuilder: (context, imageProvider) => Image.network(
      imageUrl,
      fit: BoxFit.cover,
    ),
    placeholder: (context, url) => const Center(child: CupertinoActivityIndicator()),
    errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
  );
}
CachedNetworkImageProvider buildCachedNetworkImageProvider({required String imageUrl}) {
  return CachedNetworkImageProvider(
     imageUrl,
    // imageBuilder: (context, imageProvider) => Image.network(
    //   imageUrl,
    //   fit: BoxFit.cover,
    // ),
    // placeholder: (context, url) => const Center(child: CupertinoActivityIndicator()),
    // errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
  );
}