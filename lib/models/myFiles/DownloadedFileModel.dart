class DownloadedFileModel {
  final String? id;
  final String title;
  final String? thumbnail;
  final String? type;
  final String? url;
  final String? path;
  final String? extension;
  final double? progress;
  final int? status;
  final String? duration;
  final String? size;
  final String? quality;
  final String? channelLogo;
  DownloadedFileModel({
    this.id,
    required this.title,
    this.thumbnail,
    this.type,
    this.url,
    this.path,
    this.extension,
    this.progress,
    this.status,
    this.duration,
    this.size,
    this.quality,
    this.channelLogo,
  });
}

class AppAdModel {
  final String? id;
  final String title;
  final String? thumbnail;
  final String? type;
  final String? url;
  final String? path;
  final String? extension;
  final double? progress;
  final int? status;
  final String? duration;
  final String? size;
  final String? quality;
  final String? channelLogo;
  AppAdModel({
    this.id,
    required this.title,
    this.thumbnail,
    this.type,
    this.url,
    this.path,
    this.extension,
    this.progress,
    this.status,
    this.duration,
    this.size,
    this.quality,
    this.channelLogo,
  });
}
class GameAdModel {
  final String? id;
  final String title;
  final String? description;
  final String? thumbnail;
  final String? type;
  final String? url;
  final String? path;
  final String? extension;
  final double? progress;
  final int? status;
  final String? duration;
  final String? size;
  final String? quality;
  final String? channelLogo;
  GameAdModel({
    this.id,
    required this.title,
     this.description,
    this.thumbnail,
    this.type,
    this.url,
    this.path,
    this.extension,
    this.progress,
    this.status,
    this.duration,
    this.size,
    this.quality,
    this.channelLogo,
  });
}
