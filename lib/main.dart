import 'package:altra_tube/providers/AudioProvider/AudioProvider.dart';
import 'package:altra_tube/providers/AudioProvider/service_locator.dart';
import 'package:altra_tube/providers/dashboard/dashboardProvider.dart';
import 'package:altra_tube/screens/Dashboard/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async{
   // audioHandler = await AudioService.init(
   //   builder: () => MyAudioHandler(),
   //   config: AudioServiceConfig(
   //     androidNotificationChannelId: 'com.mycompany.myapp.audio',
   //     androidNotificationChannelName: 'Audio Service Demo',
   //     androidNotificationOngoing: true,
   //     androidStopForegroundOnPause: true,
   //   ),
   // );
   await setupServiceLocator();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DashboardProvider()),
        ChangeNotifierProvider(create: (context) => AudioProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: Dashboard(),
      ),
    );
  }
}
