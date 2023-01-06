import 'package:altra_tube/providers/dashboard/dashboardProvider.dart';
import 'package:altra_tube/screens/Dashboard/Home/homeScreen.dart';
import 'package:altra_tube/screens/Dashboard/MyFiles/MyFiles.dart';
import 'package:altra_tube/utils/constants.dart';
import 'package:altra_tube/widgets/constWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, dsp, _) {
      return Scaffold(
        body: dsp.homeBottomIndex == 0
            ? const HomeScreen()
            : MyFiles(),
        bottomNavigationBar: buildBottomNavigationBar(dsp),
      );
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

