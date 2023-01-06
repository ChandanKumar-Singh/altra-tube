import 'package:altra_tube/models/dashboard/HomeSitesModel.dart';
import 'package:altra_tube/models/dashboard/musicModel.dart';
import 'package:altra_tube/models/myFiles/DownloadedFileModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/dashboard/VideoModel.dart';
import '../../models/dashboard/channelModel.dart';

class DashboardProvider extends ChangeNotifier {
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
          type:'file',
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
          type:'file',
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
          type:'file',
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
          type:'file',
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
          type:'file',
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
          type:'game',
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
          type:'file',
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
          type:'file',
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
          type:'file',
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
          type:'app',
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
          type:'app',
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
          type:'file',
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
          type:'app',
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
          type:'file',
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
          type:'file',
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
          type:'file',
          thumbnail: 'https://wallpapercave.com/wp/wp2577339.jpg',
          duration: '01:20',
          size: '3MB',
          extension: 'mp4',
          quality: '360p'),
    ],
  };
}
