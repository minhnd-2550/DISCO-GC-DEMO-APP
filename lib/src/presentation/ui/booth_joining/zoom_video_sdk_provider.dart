import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/booth_joining/intro_screen.dart';
import 'package:flutter_zoom_videosdk/native/zoom_videosdk.dart';

const zoomVideoSdkProviderPageRoutes = '/booth';

class ZoomVideoSdkProvider extends StatelessWidget {
  const ZoomVideoSdkProvider({super.key});

  @override
  Widget build(BuildContext context) {
    var zoom = ZoomVideoSdk();
    InitConfig initConfig = InitConfig(
      appGroupId: "group.test.sdk",
      domain: "zoom.us",
      enableLog: true,
    );
    zoom.initSdk(initConfig);
    return const SafeArea(
      child: IntroScreen(),
    );
  }
}
