import 'package:altra_tube/providers/dashboard/dashboardProvider.dart';
import 'package:altra_tube/utils/constants.dart';
import 'package:altra_tube/widgets/buildCacheImageNetwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../widgets/constWidgets.dart';

class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, dsp, _) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      HapticFeedback.vibrate();
                    },
                    icon: const Icon(
                      Icons.question_answer_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      HapticFeedback.vibrate();
                    },
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: buildCachedNetworkImageProvider(
                                imageUrl:
                                    'https://wallpapercave.com/wp/wp2577339.jpg'),
                          ),
                          cusWidth10(),
                          outButton(
                            height: 30,
                            onTap: () {},
                            child: b1Text(
                              'Log in',
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                      cusHeight15(),
                      Container(
                        height: 250,
                        padding: EdgeInsets.symmetric(
                            horizontal: mediumPadding, vertical: lessPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(mediumPadding),
                            color: bgColor!.withOpacity(0.2)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                b1Text('Tool Center'),
                                IconButton(
                                  onPressed: () async {
                                    HapticFeedback.vibrate();
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: mediumPadding,
                                        mainAxisSpacing: mediumPadding,
                                        childAspectRatio: 5),
                                itemCount: dsp.tools.length,
                                itemBuilder: (context, i) {
                                  var tool = dsp.tools[i];
                                  return GestureDetector(
                                    onTap: () async {
                                      HapticFeedback.vibrate();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: lessPadding),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(lessRadius),
                                        color: bgColor!.withOpacity(0.5),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: tool.color),
                                              padding: const EdgeInsets.all(5),
                                              child: Icon(
                                                tool.icon,
                                                size: 16,
                                              )),
                                          cusWidth10(),
                                          Expanded(
                                            child: capText(tool.name,
                                                textAlign: TextAlign.start,
                                                maxLine: 1,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      cusHeight15(),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5, vertical: lessPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(mediumPadding),
                            color: bgColor!.withOpacity(0.2)),
                        child: Column(
                          children: [
                            ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius)),
                              onTap: () async {
                                HapticFeedback.vibrate();
                              },
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.question_answer_outlined,
                                        color: textColor!.withOpacity(0.6),
                                        size: 18,
                                      ),
                                      cusWidth10(),
                                      b1Text('Feedback'),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: textColor!.withOpacity(0.6),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius)),
                              onTap: () async {
                                HapticFeedback.vibrate();
                              },
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.question_answer_outlined,
                                        color: textColor!.withOpacity(0.6),
                                        size: 18,
                                      ),
                                      cusWidth10(),
                                      b1Text('Share Snaptube'),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: textColor!.withOpacity(0.6),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius)),
                              onTap: () async {
                                HapticFeedback.vibrate();
                              },
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.question_answer_outlined,
                                        color: textColor!.withOpacity(0.6),
                                        size: 18,
                                      ),
                                      cusWidth10(),
                                      b1Text('Follow Snaptube'),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: textColor!.withOpacity(0.6),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius)),
                              onTap: () async {
                                HapticFeedback.vibrate();
                              },
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.link,
                                        color: textColor!.withOpacity(0.6),
                                        size: 18,
                                      ),
                                      cusWidth10(),
                                      b1Text('Link To YouTube'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      capText('Non-Linked'),
                                      cusWidth10(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: textColor!.withOpacity(0.6),
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius)),
                              onTap: () async {
                                HapticFeedback.vibrate();
                              },
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.error_outline,
                                        color: textColor!.withOpacity(0.6),
                                        size: 18,
                                      ),
                                      cusWidth10(),
                                      b1Text('About'),
                                      cusWidth10(),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.yellow,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        child: capText('New Version',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: textColor!.withOpacity(0.6),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      cusHeight15(),
                      cusHeight15(),
                      cusHeight15(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 25,
                          )
                        ],
                      ),
                      cusHeight15(),
                      cusHeight15(),
                      cusHeight15(),
                      cusHeight15(),
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
}
