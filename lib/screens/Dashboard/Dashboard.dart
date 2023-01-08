import 'dart:async';

import 'package:altra_tube/providers/AudioProvider/AudioProvider.dart';
import 'package:altra_tube/providers/dashboard/dashboardProvider.dart';
import 'package:altra_tube/screens/Dashboard/AudioPlayer/AudioPlayerWidget.dart';
import 'package:altra_tube/screens/Dashboard/Home/homeScreen.dart';
import 'package:altra_tube/screens/Dashboard/MyFiles/MyFiles.dart';
import 'package:altra_tube/utils/constants.dart';
import 'package:altra_tube/widgets/constWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'Me/me.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var dsp = Provider.of<DashboardProvider>(context, listen: false);
    var ap = Provider.of<AudioProvider>(context, listen: false);
    ap.audioTimer();
    // Timer(const Duration(seconds: 1), () {
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, dsp, _) {
      return Consumer<AudioProvider>(builder: (context, ap, _) {
        print(ap.audioHandler.mediaItem.value!=null);
        print(ap.bottomSheetOpen);
        print(ap.audioHandler.mediaItem.value!=null
            && !ap.bottomSheetOpen);
        return Scaffold(
          body: Scaffold(
            body: dsp.homeBottomIndex == 0
                ? const HomeScreen()
                : dsp.homeBottomIndex == 1
                    ? const MyFiles()
                    : const Me(),
            bottomNavigationBar:
                // ap.playList.children.isNotEmpty && !ap.bottomSheetOpen
            ap.audioHandler.mediaItem.value!=null
                // && !ap.bottomSheetOpen
                    ? const MinimizedAudioPlayer()
                    : const SizedBox(),
          ),
          bottomNavigationBar: buildBottomNavigationBar(dsp),
        );
      });
    });
  }

  BottomNavigationBar buildBottomNavigationBar(DashboardProvider dsp) {
    return BottomNavigationBar(
      currentIndex: dsp.homeBottomIndex,
      onTap: (index) {
        HapticFeedback.vibrate();
        dsp.setHomeBottomIndex(index);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.download_for_offline_outlined), label: 'My Files'),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.smile), label: 'Me'),
      ],
    );
  }
}
