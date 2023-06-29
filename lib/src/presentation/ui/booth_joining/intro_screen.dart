import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/booth_joining/call_screen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/booth_joining/join_screen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/button_with_icon.dart';
import 'package:permission_handler/permission_handler.dart';

const introZoomPageRoutes = '/intro';

class JoinArguments {
  final bool isJoin;
  final String sessionName;
  final String sessionPwd;
  final String displayName;
  final String sessionTimeout;
  final String roleType;

  JoinArguments(this.isJoin, this.sessionName, this.sessionPwd,
      this.displayName, this.sessionTimeout, this.roleType);
}

class IntroButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final bool isJoin;

  const IntroButton(
      {super.key,
      required this.text,
      required this.buttonColor,
      required this.textColor,
      required this.isJoin});

  @override
  Widget build(BuildContext context) {
    String sessionNameText = getDefaultSessionName();
    final sessionNameController = TextEditingController(text: sessionNameText);
    final sessionPwdController = TextEditingController(text: '');
    final displayNameController =
        TextEditingController(text: 'Nguyen Duc Minh');
    final sessionTimeoutMinController = TextEditingController(text: '40');
    final roleTypeController = TextEditingController(text: '1');
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, callZoomPageRoutes,
            arguments: CallArguments(
                sessionNameController.text,
                sessionPwdController.text,
                displayNameController.text,
                sessionTimeoutMinController.text,
                roleTypeController.text,
                isJoin));
        //   Navigator.pushNamed(context, joinZoomPageRoutes,
        //       arguments: JoinArguments(
        //         isJoin,
        //         "",
        //         "",
        //         "",
        //         "",
        //         "",
        //       ));
      },
      child: Container(
        height: 60.0,
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: buttonColor,
            border: Border.all(
              color: Colors.black12,
              width: 1,
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.normal, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<StatefulWidget> createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  // In Android we need to request the storage permission,
  // while in iOS is the photos permission
  Map<String, List<Permission>> platformPermissions = {
    "ios": [
      Permission.camera,
      Permission.microphone,
      //Permission.photos,
    ],
    "android": [
      Permission.camera,
      Permission.microphone,
      Permission.bluetoothConnect,
      Permission.phone,
      Permission.storage,
    ],
  };

  Future<void> requestFilePermission() async {
    if (!Platform.isAndroid && !Platform.isIOS) {}
    bool blocked = false;
    List<Permission>? notGranted = [];
    PermissionStatus result;
    List<Permission>? permissions = Platform.isAndroid
        ? platformPermissions["android"]
        : platformPermissions["ios"];
    Map<Permission, PermissionStatus>? statuses = await permissions?.request();
    statuses!.forEach((key, status) {
      if (status.isDenied) {
        blocked = true;
      } else if (!status.isGranted) {
        notGranted.add(key);
      }
    });

    if (notGranted.isNotEmpty) {
      notGranted.request();
    }

    if (blocked) {
      await openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    requestFilePermission();
    return BasePage(
      children: [
        Container(
          margin: const EdgeInsets.all(20.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://nguoinoitieng.tv/images/nnt/102/0/bggd.jpg',
                width: 64.0,
                height: 64.0,
                fit: BoxFit.contain,
              ),
              Row(
                children: const [
                  Text(
                    "Toan Company1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  Text(
                    " / Toan booth2",
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Text(
                    "(入室中　0人)",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
              const ButtonWithIcon(
                text: "オファーリクエスト",
                icons: Icons.campaign,
                color: 0xfff7ecd5,
                textColor: 0xff666666,
              ),
              const ButtonWithIcon(
                text: "ダイレクトメッセージ",
                icons: Icons.question_answer,
                color: 0xfff7ecd5,
                textColor: 0xff666666,
              ),
              const IntroButton(
                text: "入室",
                buttonColor: Color(0xff0070f3),
                textColor: Colors.white,
                isJoin: false,
              ),
            ],
          ),
        )
      ],
    );
  }
}
