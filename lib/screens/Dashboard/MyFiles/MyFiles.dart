import 'package:altra_tube/models/myFiles/DownloadedFileModel.dart';
import 'package:altra_tube/providers/dashboard/dashboardProvider.dart';
import 'package:altra_tube/utils/constants.dart';
import 'package:altra_tube/widgets/buildCacheImageNetwork.dart';
import 'package:altra_tube/widgets/constWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, dsp, _) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildHeader(),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(
                            child: b1Text('Download'),
                          ),
                          Tab(
                            child: b1Text('Music'),
                          ),
                          Tab(
                            child: b1Text('Video'),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            ListView(
                              children: [
                                ...dsp.downloadedList.entries.map(
                                  (item) {
                                    var downloads = item.value;
                                    return Column(
                                      children: [
                                        ...downloads.map((downloadItem) {
                                          debugPrint(downloadItem.type);
                                          if (downloadItem.type == 'app') {
                                            var download =
                                                downloadItem as AppAdModel;
                                            return buildAppAdTile(download);
                                          } else if (downloadItem.type ==
                                              'game') {
                                            var download =
                                                downloadItem as GameAdModel;
                                            return buildDownloadGameTile(
                                                download);
                                          } else {
                                            var download = downloadItem
                                                as DownloadedFileModel;
                                            return buildDownloadFilesTile(
                                                download);
                                          }
                                        }),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                            Container(),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Row buildAppAdTile(AppAdModel download) {
    return Row(
      children: [
        SizedBox(
          width: Get.width / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(lessPadding),
            child: buildCachedNetworkImage(imageUrl: download.thumbnail ?? ''),
          ),
        ),
        SizedBox(width: mediumPadding),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              b1Text(download.title,
                  maxLine: 2, overflow: TextOverflow.ellipsis),
              SizedBox(height: lessPadding),
              SizedBox(height: mediumPadding),
              SizedBox(
                height: 25,
                child: OutlinedButton(
                  onPressed: () async {
                    HapticFeedback.vibrate();
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5 * maxRadius),
                    ),
                  ),
                  child: const Text('Install'),
                ),
              ),
              SizedBox(height: mediumPadding),
            ],
          ),
        ),
        IconButton(
          onPressed: () async {
            HapticFeedback.vibrate();
          },
          icon: const Icon(Icons.clear, size: 15),
        ),
      ],
    );
  }

  Row buildDownloadGameTile(GameAdModel download) {
    return Row(
      children: [
        SizedBox(
          width: Get.width / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(lessPadding),
            child: buildCachedNetworkImage(imageUrl: download.thumbnail ?? ''),
          ),
        ),
        SizedBox(width: mediumPadding),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              b1Text(download.title,
                  maxLine: 2, overflow: TextOverflow.ellipsis),
              SizedBox(height: lessPadding),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(lessRadius / 2),
                              border:
                                  Border.all(color: capColor ?? Colors.grey)),
                          padding: const EdgeInsets.all(1),
                          child: capText(
                            'AD',
                          ),
                        ),
                        SizedBox(width: lessPadding / 2),
                        Expanded(
                          child: capText(
                            download.description ?? '',
                            maxLine: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: mediumPadding),
                  SizedBox(
                    height: 25,
                    child: OutlinedButton(
                      onPressed: () async {
                        HapticFeedback.vibrate();
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5 * maxRadius),
                        ),
                      ),
                      child: const Text('Play'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediumPadding),
            ],
          ),
        ),
        IconButton(
          onPressed: () async {
            HapticFeedback.vibrate();
          },
          icon: const Icon(Icons.clear, size: 15),
        ),
      ],
    );
  }

  Row buildDownloadFilesTile(DownloadedFileModel download) {
    return Row(
      children: [
        SizedBox(
          width: Get.width / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(lessPadding),
            child: buildCachedNetworkImage(imageUrl: download.thumbnail ?? ''),
          ),
        ),
        SizedBox(width: mediumPadding),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              b1Text(download.title,
                  maxLine: 2, overflow: TextOverflow.ellipsis),
              SizedBox(height: lessPadding),
              if (download.status == 0)
                Row(
                  children: [
                    Expanded(
                        child: LinearProgressBar(
                      maxSteps: 100,
                      progressType: LinearProgressBar
                          .progressTypeLinear, // Use Linear progress
                      currentStep: download.progress!.toInt(),
                      progressColor: Colors.blue,
                      backgroundColor: bgColor,
                    )),
                  ],
                ),
              SizedBox(height: lessPadding),
              Builder(
                builder: (context) {
                  int status = download.status!;
                  if (status == 0) {
                    return GestureDetector(
                      onTap: () {
                        HapticFeedback.vibrate();
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.pause_circle_outline_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(width: mediumPadding),
                          capText('1mb/s'),
                        ],
                      ),
                    );
                  } else if (status == 1) {
                    return Row(
                      children: [
                        capText(download.size ?? ""),
                        SizedBox(width: mediumPadding),
                        Container(height: 10, color: capColor, width: 1),
                        SizedBox(width: mediumPadding),
                        capText(download.extension != null
                            ? download.extension!.toUpperCase()
                            : ''),
                        SizedBox(width: mediumPadding),
                        Container(height: 10, color: capColor, width: 1),
                        SizedBox(width: mediumPadding),
                        capText(download.quality != null
                            ? download.quality!.toUpperCase()
                            : ''),
                      ],
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {
                        HapticFeedback.vibrate();
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.replay_rounded, color: Colors.red),
                          SizedBox(width: mediumPadding),
                          capText('Failed, click to retry', color: Colors.red),
                        ],
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: mediumPadding),
            ],
          ),
        ),
        IconButton(
          onPressed: () async {
            HapticFeedback.vibrate();
          },
          icon: const Icon(Icons.more_vert, size: 15),
        ),
      ],
    );
  }

  Padding buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          h6Text('My FIles'),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.select_all_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Stack(
                  children: [
                    const Icon(Icons.more_vert),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 5,
                        height: 5,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}