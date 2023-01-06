class MusicModel {
  final String? id;
  final String title;
  final String? description;
  final String? thumbnail;
  final String? url;
  final String? channelName;
  final String? tracks;
  final bool? addedToDownLoad;
  final String? duration;
  final String? uploadTime;
  final String? channelLogo;
  MusicModel({
    this.id,
    required this.title,
     this.description,
    this.thumbnail,
    this.url,
    this.channelName,
    this.tracks,
    this.addedToDownLoad,
    this.duration,
    this.uploadTime,
    this.channelLogo,
  });

}