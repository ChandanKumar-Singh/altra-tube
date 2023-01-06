class VideoModel {
  final String? id;
  final String title;
  final String? thumbnail;
  final String? url;
  final String? channelName;
  final bool? addedToDownLoad;
  final String? duration;
  final String? views;
  final String? uploadTime;
  final String? channelLogo;
  VideoModel({
     this.id,
    required this.title,
    this.thumbnail,
    this.url,
    this.channelName,
    this.addedToDownLoad,
    this.duration,
    this.views,
    this.uploadTime,
    this.channelLogo,
  });

}
