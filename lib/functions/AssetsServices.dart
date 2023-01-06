import 'package:flutter/widgets.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:fetch_all_videos/fetch_all_videos.dart';

FetchAllVideos ob = FetchAllVideos();
final OnAudioQuery _audioQuery = OnAudioQuery();

class AssetsServices {
  String tag = 'AssetsServices';
  Future<List<SongModel>> getDeviceSongs() async {
    // DEFAULT:
    // SongSortType.TITLE,
    // OrderType.ASC_OR_SMALLER,
    // UriType.EXTERNAL,
    List<SongModel> songs = [];
    try {
      songs = await _audioQuery.querySongs();
    } catch (e) {
      debugPrint('$tag getDeviceSongs ERROR $e');
    }
    return songs;
  }

  Future<List<dynamic>> getDeviceVideos() async {
    List<dynamic> videos = [];
    try {
      videos = await ob.getAllVideos();
    } catch (e) {
      debugPrint('$tag getDeviceVideos ERROR $e');
    }
    return videos;
  }
}
