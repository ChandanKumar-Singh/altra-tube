import 'package:altra_tube/widgets/constWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../../providers/dashboard/dashboardProvider.dart';
import '../../../utils/categories.dart';
import '../../../utils/constants.dart';
import '../../../widgets/buildCacheImageNetwork.dart';
import '../../../widgets/video_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var dsp = Provider.of<DashboardProvider>(context, listen: false);

    dsp.onRefresh();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, dsp, _) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildDashboardSearchWidget(context),
              Expanded(
                  child: DefaultTabController(
                initialIndex: 1,
                length: 5,
                child: Column(
                  children: [
                    buildTabBar(),
                    Expanded(
                      child: TabBarView(
                        children: [
                          buildSubTab(),
                          buildForYouTab(dsp, context),
                          buildMusicTab(context, dsp),
                          buildTrendingTab(dsp, context),
                          buildChannelsTab(dsp, context),
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      );
    });
  }

  Widget buildChannelsTab(DashboardProvider dsp, BuildContext context) {
    return RefreshIndicator(
      onRefresh: dsp.onRefresh,
      child: ListView(
        children: [
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...dsp.channelsCategoryList.map((channel) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () async {
                          HapticFeedback.vibrate();
                          // navigateToPlayer(context, video);

                          debugPrint(channel.url);
                        },
                        child: CircleAvatar(
                          radius: (Get.width / 13 - 10),
                          backgroundImage: AssetImage(
                            channel.image,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        channel.name,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const Spacer(),
                    ],
                  );
                })
              ],
            ),
          ),
          ...dsp.channelsByCategoryList.entries.map((category) {
            int index = dsp.channelsByCategoryList.entries
                .toList()
                .indexWhere((element) => element.key == category.key);
            debugPrint(index.toString());
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: b1Text(category.key),
                ),
                ...category.value
                    .getRange(0,
                        dsp.channelsExpanded[index] ? category.value.length : 5)
                    .map((channel) {
                  return ListTile(
                    onTap: () async {
                      HapticFeedback.vibrate();
                    },
                    leading: CircleAvatar(
                      backgroundImage: buildCachedNetworkImageProvider(
                          imageUrl: channel.channelLogo ?? ''),
                    ),
                    title: b1Text(channel.channelName ?? ''),
                    subtitle: capText('${channel.subscribers} subscribers'),
                    trailing: IconButton(
                        onPressed: () async {
                          HapticFeedback.vibrate();
                        },
                        icon: const FaIcon(FontAwesomeIcons.share)),
                  );
                }),
                GestureDetector(
                  onTap: () {
                    dsp.updateChannelExpanded(
                        !dsp.channelsExpanded[index], index);
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .backgroundColor
                                  .withOpacity(0.5),
                            ),
                            width: double.maxFinite,
                            child: Icon(dsp.channelsExpanded[index]
                                ? Icons.keyboard_arrow_up_rounded
                                : Icons.keyboard_arrow_down_rounded)),
                      ),
                    ],
                  ),
                ),
                const Divider(),
              ],
            );
          }),
        ],
      ),
    );
  }

  Widget buildTrendingTab(DashboardProvider dsp, BuildContext context) {
    return RefreshIndicator(
      onRefresh: dsp.onRefresh,
      child: ListView(
        children: [
          ...dsp.ytTrendingVideos.map((video) {
            return GestureDetector(
              onTap: () {
                HapticFeedback.vibrate();
                navigateToPlayer(context, video);
              },
              child: SizedBox(
                // height: 250,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.maxFinite,
                          child: buildCachedNetworkImage(
                            imageUrl: video.thumbnails!.first.url ?? '',
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: b1Text('${video.views} views'),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: b1Text(video.duration ?? ''),
                        ),
                        Positioned(
                          top: -15,
                          right: -15,
                          child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .backgroundColor
                                    .withOpacity(0.2),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    HapticFeedback.vibrate();
                                  },
                                  icon: const Icon(Icons.add))),
                        ),
                      ],
                    ),
                    SizedBox(height: mediumPadding),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            HapticFeedback.vibrate();
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: buildCachedNetworkImageProvider(
                                imageUrl: video.thumbnails![1].url ?? ''),
                          ),
                        ),
                        SizedBox(width: mediumPadding),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: b1Text(
                                    video.title ?? '',
                                    maxLine: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          HapticFeedback.vibrate();
                                        },
                                        child: capText(video.channelName ?? ""),
                                      ),
                                      SizedBox(width: mediumPadding),
                                      capText(video.views ?? ''),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () async {},
                                        icon:
                                            const Icon(Icons.download_outlined),
                                      ),
                                      IconButton(
                                        onPressed: () async {},
                                        icon: const Icon(
                                            Icons.headphones_outlined),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget buildMusicTab(BuildContext context, DashboardProvider dsp) {
    return RefreshIndicator(
      onRefresh: dsp.onRefresh,
      child: ListView(
        children: [
          buildMusicByCategory(context, dsp),
          buildMusicByCategory(context, dsp),
          buildMusicByCategory(context, dsp),
          buildMusicByCategory(context, dsp),
          buildMusicByCategory(context, dsp),
        ],
      ),
    );
  }

  Column buildMusicByCategory(BuildContext context, DashboardProvider dsp) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
          ),
          padding: const EdgeInsets.all(8),
          child: b1Text('This Year in Music'),
        ),
        ...dsp.trendingMusicVideos.map((music) {
          return GestureDetector(
            onTap: () async {
              HapticFeedback.vibrate();
              navigateToPlayer(context, music);
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(lessPadding),
                    height: Get.height / 6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(mediumRadius),
                      child: buildCachedNetworkImage(
                          imageUrl: music.thumbnails!.first.url ?? ""),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: b1Text(
                            music.title ?? '',
                            maxLine: 1,
                            overflow: TextOverflow.ellipsis,
                          )),
                        ],
                      ),
                      SizedBox(height: lessPadding),
                      Row(
                        children: [
                          Expanded(
                            child: capText(
                              music.channelName ?? '',
                              maxLine: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediumPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                HapticFeedback.vibrate();
                              },
                              child: capText(
                                '${music.thumbnails!.last.url ?? ''} tracks',
                                maxLine: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () async {
                                  HapticFeedback.vibrate();
                                },
                                icon: const Icon(Icons.download_outlined),
                              ),
                              IconButton(
                                onPressed: () async {
                                  HapticFeedback.vibrate();
                                },
                                icon: const Icon(Icons.headphones_outlined),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget buildForYouTab(DashboardProvider dsp, BuildContext context) {
    return RefreshIndicator(
      onRefresh: dsp.onRefresh,
      child: ListView(
        children: [
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...dsp.homeSitesList.map((site) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () async {
                          HapticFeedback.vibrate();

                          debugPrint(site.url);
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            site.image,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        site.name,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const Spacer(),
                    ],
                  );
                })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.3),
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () async {
                      HapticFeedback.vibrate();
                    },
                    child: const Text(
                      'View all sites',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ...dsp.ytForYouVideos.map((video) {
            return Column(
              children: [
                //   VideoWidget(
                //   video: video,
                // ),
                GestureDetector(
                  onTap: () {
                    HapticFeedback.vibrate();
                    navigateToPlayer(context, video);
                  },
                  child: SizedBox(
                    // height: 250,
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: 200,
                              width: double.maxFinite,
                              child: buildCachedNetworkImage(
                                imageUrl: video.thumbnails!.first.url ?? '',
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: b1Text('${video.views} views'),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: b1Text(video.duration ?? ''),
                            ),
                            Positioned(
                              top: -15,
                              right: -15,
                              child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context)
                                        .backgroundColor
                                        .withOpacity(0.2),
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        HapticFeedback.vibrate();
                                      },
                                      icon: const Icon(Icons.add))),
                            ),
                          ],
                        ),
                        SizedBox(height: mediumPadding),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                HapticFeedback.vibrate();
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    buildCachedNetworkImageProvider(
                                        imageUrl: video.channelName ?? ''),
                              ),
                            ),
                            SizedBox(width: mediumPadding),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: b1Text(
                                        video.title ?? '',
                                        maxLine: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              HapticFeedback.vibrate();
                                            },
                                            child: capText(
                                                video.channelName ?? ""),
                                          ),
                                          SizedBox(width: mediumPadding),
                                          capText(video.views ?? ''),
                                        ],
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: () async {},
                                            icon: const Icon(
                                                Icons.download_outlined),
                                          ),
                                          IconButton(
                                            onPressed: () async {},
                                            icon: const Icon(
                                                Icons.headphones_outlined),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }

  Column buildSubTab() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/siteLogos/YouTube_dark_icon_(2017).svg.png',
          width: 100,
        ),
        SizedBox(height: 2 * maxPadding),
        b1Text(
          'Sign in to see updates from your favorite youtube\nchannels',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 2 * maxPadding),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.red, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5 * maxPadding),
            ),
          ),
          onPressed: () async {},
          icon: const Icon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
          ),
          label: b1Text('Sign in ', color: Colors.red),
        ),
      ],
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      tabs: [
        Tab(
          child: Text(
            'Sub',
            style: TextStyle(
                color: Theme.of(Get.context!).textTheme.headline6!.color),
          ),
        ),
        Tab(
          child: Text(
            'For You',
            style: TextStyle(
                color: Theme.of(Get.context!).textTheme.headline6!.color),
          ),
        ),
        Tab(
          child: Text(
            'Music',
            style: TextStyle(
                color: Theme.of(Get.context!).textTheme.headline6!.color),
          ),
        ),
        Tab(
          child: Text(
            'Trending',
            style: TextStyle(
                color: Theme.of(Get.context!).textTheme.headline6!.color),
          ),
        ),
        Tab(
          child: Text(
            'Channels',
            style: TextStyle(
                color: Theme.of(Get.context!).textTheme.headline6!.color),
          ),
        ),
      ],
    );
  }

  Padding buildDashboardSearchWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color:
                    Theme.of(context).colorScheme.background.withOpacity(0.3),
                borderRadius: BorderRadius.circular(lessRadius),
              ),
              child: Row(
                children: [
                  SizedBox(width: mediumPadding),
                  const Icon(Icons.search, color: Colors.white),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: mediumPadding),
                        border: InputBorder.none,
                        hintText: 'Search or enter web address'),
                  )),
                  VerticalDivider(color: textColor),
                  IconButton(
                      onPressed: () {
                        HapticFeedback.vibrate();
                      },
                      icon: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: textColor ?? Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(2),
                          child: const Icon(Icons.music_note_outlined))),
                  IconButton(
                      onPressed: () {
                        HapticFeedback.vibrate();
                      },
                      icon: const Icon(CupertinoIcons.table_badge_more_fill)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
