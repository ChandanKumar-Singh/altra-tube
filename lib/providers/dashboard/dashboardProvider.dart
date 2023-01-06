import 'dart:io';
import 'dart:typed_data';

import 'package:altra_tube/functions/AssetsServices.dart';
import 'package:altra_tube/functions/PermissionServices.dart';
import 'package:altra_tube/models/dashboard/HomeSitesModel.dart';
import 'package:altra_tube/models/dashboard/musicModel.dart';
import 'package:altra_tube/models/myFiles/DownloadedFileModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';

import '../../models/dashboard/VideoModel.dart';
import '../../models/dashboard/channelModel.dart';
import '../../models/myFiles/deviceVideoModel.dart';

class DashboardProvider extends ChangeNotifier {
  String tag = 'DashboardProvider';

  ///TODO:Home Tab
  int homeBottomIndex = 0;
  setHomeBottomIndex(int index) {
    homeBottomIndex = index;
    notifyListeners();
  }

  ///TODO:Home Tab

  ///for you tab
  List<HomeSiteModel> homeSitesList = [
    HomeSiteModel(
        name: 'YouTube',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    HomeSiteModel(
        name: 'Instagram',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    HomeSiteModel(
        name: 'Facebook',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    HomeSiteModel(
        name: 'News',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    HomeSiteModel(
        name: 'Bookmarks',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
  ];
  List<VideoModel> forYouVideos = [
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
  ];

  ///music Tab
  List<MusicModel> musicLists = [
    MusicModel(
        title: 'Hits of 2022',
        description:
            'Experience the stand of 2022 with us collection of some biggest hits of the year.',
        thumbnail: 'https://wallpaperaccess.com/full/3241965.jpg',
        url: 'https://wallpaperaccess.com/full/3241965.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo: 'https://wallpaperaccess.com/full/3241965.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    MusicModel(
        title: 'Hits of 2022',
        description:
            'Experience the stand of 2022 with us collection of some biggest hits of the year.',
        thumbnail: 'https://wallpaperaccess.com/full/3241965.jpg',
        url: 'https://wallpaperaccess.com/full/3241965.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo: 'https://wallpaperaccess.com/full/3241965.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    MusicModel(
        title: 'Hits of 2022',
        description:
            'Experience the stand of 2022 with us collection of some biggest hits of the year.',
        thumbnail: 'https://wallpaperaccess.com/full/3241965.jpg',
        url: 'https://wallpaperaccess.com/full/3241965.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo: 'https://wallpaperaccess.com/full/3241965.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    MusicModel(
        title: 'Hits of 2022',
        description:
            'Experience the stand of 2022 with us collection of some biggest hits of the year.',
        thumbnail: 'https://wallpaperaccess.com/full/3241965.jpg',
        url: 'https://wallpaperaccess.com/full/3241965.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo: 'https://wallpaperaccess.com/full/3241965.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    MusicModel(
        title: 'Hits of 2022',
        description:
            'Experience the stand of 2022 with us collection of some biggest hits of the year.',
        thumbnail: 'https://wallpaperaccess.com/full/3241965.jpg',
        url: 'https://wallpaperaccess.com/full/3241965.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo: 'https://wallpaperaccess.com/full/3241965.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
  ];

  ///trending Tab
  List<VideoModel> trendingVideos = [
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
    VideoModel(
        title:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        thumbnail:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        url:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        channelName: '90\'s Songs Evergreen',
        channelLogo:
            'https://static5.depositphotos.com/1040226/462/i/600/depositphotos_4626070-stock-photo-close-christmas-tree-farm-oregon.jpg',
        addedToDownLoad: false,
        duration: '38:19',
        views: '384K',
        uploadTime: '4 years ago',
        id: 'kr739439434634302347'),
  ];

  ///channels Tab
  List<bool> channelsExpanded = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  updateChannelExpanded(bool val, int index) {
    channelsExpanded[index] = val;
    notifyListeners();
  }

  List<ChannelsCategoryModel> channelsCategoryList = [
    ChannelsCategoryModel(
        name: 'Popular',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    ChannelsCategoryModel(
        name: 'Music',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    ChannelsCategoryModel(
        name: 'Sports',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    ChannelsCategoryModel(
        name: 'Gaming',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    ChannelsCategoryModel(
        name: 'News',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
    ChannelsCategoryModel(
        name: 'Live',
        url: 'www.youtube.com',
        image: 'assets/siteLogos/youtube-1837872__340.webp'),
  ];
  Map<String, List<ChannelModel>> channelsByCategoryList = {
    'Beauty & Fashion': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
    'Comedy': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
    'Sports': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
    'Music': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
    'Tech': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
    'Gaming': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
    'Cooking & Health': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
    'Film & Entertainment': [
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
      ChannelModel(
          id: 'u93439hewfeuf9eff',
          channelName: 'Lauren Elizabeth',
          channelLogo: 'fodhfdfdf difdfd dfhhdsgcdfjoef',
          subscribers: "854K",
          url: 'https://www.youtube.com/user/macbby11/featured'),
    ],
  };

  ///TODO:MyFiles Tab
  Map<String, List<dynamic>> downloadedList = {
    'downloads': [
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 0,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 0,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 0,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      GameAdModel(
          title: 'Play Ludo & Withdraw Winning using UPI!',
          description: 'Play Ludo & Win Rs.10K directly in your bank account',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 1,
          type: 'game',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 1,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      AppAdModel(
          title: 'Lark Player',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'app',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      AppAdModel(
          title: 'RummyCircle',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'app',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      AppAdModel(
          title: 'KD Player',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'app',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
      DownloadedFileModel(
          title: 'FOUR LESSONS TO LEARN ABOUT NODE JS AND IT\'S USES IN APIS',
          url: 'dffd d',
          path: 'djfffdsfdf d',
          progress: 30,
          status: 2,
          type: 'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
    ],
  };

  List<SongModel> deviceSongs = [];
  bool isLoadingSongs = false;

  Future<void> getDeviceSongs() async {
    debugPrint('$tag getDeviceSongs loading...');
    isLoadingSongs = true;
    notifyListeners();
    var granted = await PermissionServices().getPermission(Permission.storage);
    // await PermissionServices().getPermission(Permission.manageExternalStorage);
    if (granted) {
      deviceSongs = await AssetsServices().getDeviceSongs();
      notifyListeners();
    }
    debugPrint('$tag getDeviceSongs total ${deviceSongs.length} ');
    isLoadingSongs = false;
    notifyListeners();
  }

  Future<void> getDeviceVideos() async {
    debugPrint('$tag getDeviceVideos loading...');
    var granted = await PermissionServices().getPermission(Permission.location);
    if (granted) {
      deviceVideos = await AssetsServices().getDeviceVideos();
      notifyListeners();
    }
    debugPrint('$tag getDeviceVideos total ${deviceVideos.length} ');
  }

  List<AssetPathEntity> paths = [];
  List<MapEntry<AssetPathEntity, List<AssetEntity>>> imageFolders = [];
  List<MapEntry<AssetPathEntity, List<AssetEntity>>> musicFolders = [];

  bool isLoadingVideos = false;
  List<dynamic> deviceVideos = [];
  List<AssetEntity> deviceVideos2 = [];
  List<DeviceVideoModel> deviceVideos3 = [];
  Future<void> getPaths() async {
    // var granted = await PermissionServices().getPermission(Permission.videos);
    //  granted = await PermissionServices().getPermission(Permission.audio);
    var granted = await PermissionServices().getPermission(Permission.mediaLibrary);
    if (granted) {
      isLoadingVideos = true;
      notifyListeners();
      paths = await PhotoManager.getAssetPathList();
      deviceVideos2.clear();
      deviceVideos3.clear();
      for (var e in paths) {
        final List<AssetEntity> entities =
            await e.getAssetListPaged(page: 0, size: 80);
        notifyListeners();
        if (entities.any((ele) => ele.type == AssetType.video)) {
          List<AssetEntity> list = [];
          list.addAll(
              entities.where((element) => element.type == AssetType.video));
          deviceVideos2.addAll(list);
        }
      }
      debugPrint('$tag deviceVideos2 ${deviceVideos2.length}');
      notifyListeners();
      for (var element in deviceVideos2) {
        var deviceVideoModel = DeviceVideoModel(
            id: element.id,
            title: element.title,
            duration: element.duration,
            size: element.size,
            thumnail: await getThumbnail(element),
            path: element.relativePath,
            file: await getFile(element));
        deviceVideos3.add(deviceVideoModel);
      }
      debugPrint('$tag deviceVideos3 ${deviceVideos3.length}');
      isLoadingVideos = false;
      notifyListeners();
    }
  }

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

  List<ToolCenterModel> tools = [
    ToolCenterModel(
        icon: Icons.rocket_rounded, name: 'Boost', color: Colors.green),
    ToolCenterModel(
        icon: Icons.rocket_rounded, name: '467.08MB', color: Colors.pinkAccent),
    ToolCenterModel(
        icon: Icons.battery_saver_rounded,
        name: 'Battery Saver',
        color: Colors.blueAccent),
    ToolCenterModel(
        icon: Icons.whatsapp, name: 'WhatsApp Cleaner', color: Colors.green),
    ToolCenterModel(
        icon: Icons.folder_delete, name: 'Large Files', color: Colors.blue),
    ToolCenterModel(
        icon: Icons.android, name: 'App Manager', color: Colors.amberAccent),
    ToolCenterModel(
        icon: Icons.folder, name: 'Files manager', color: Colors.yellow),
    ToolCenterModel(
        icon: Icons.circle_notifications_outlined,
        name: 'Status Saver',
        color: Colors.green),
  ];
}

class ToolCenterModel {
  final IconData icon;
  final String name;
  final Color color;
  ToolCenterModel(
      {required this.color, required this.icon, required this.name});
}
