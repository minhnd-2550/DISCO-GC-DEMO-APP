import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/booth_joining/call_screen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_page.dart';
import 'intro_screen.dart';

const joinZoomPageRoutes = '/join';

String getDefaultSessionName() {
  var DEFAULT_SESSION_NAMES = [
    'grand-canyon',
    'yosemite',
    'yellowstone',
    'disneyland',
    'golden-gate-bridge',
    'monument-valley',
    'death-valley',
    'brooklyn-bridge',
    'hoover-dam',
    'lake-tahoe',
  ];
  String defaultSessionName =
      '${DEFAULT_SESSION_NAMES[Random().nextInt(DEFAULT_SESSION_NAMES.length)]}-${Random().nextInt(1000)}';

  return defaultSessionName;
}

class SessionForm extends StatefulWidget {
  final bool isJoin;
  final String sessionName;
  final String sessionPwd;
  final String displayName;
  final String sessionTimeout;
  final String roleType;

  const SessionForm(
      {super.key,
      required this.isJoin,
      required this.sessionName,
      required this.sessionPwd,
      required this.displayName,
      required this.sessionTimeout,
      required this.roleType});

  @override
  SessionFormState createState() {
    return SessionFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SessionFormState extends State<SessionForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    String sessionNameText = (widget.sessionName == "")
        ? getDefaultSessionName()
        : widget.sessionName;
    final sessionNameController = TextEditingController(text: sessionNameText);
    final sessionPwdController = TextEditingController(text: widget.sessionPwd);
    final displayNameController =
        TextEditingController(text: widget.displayName);
    final sessionTimeoutMinController =
        TextEditingController(text: widget.sessionTimeout);
    final roleTypeController = TextEditingController(text: widget.roleType);

    String buttonText = widget.isJoin ? "Join" : "Create";

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Required',
              labelText: 'Session Name',
            ),
            controller: sessionNameController,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Session name required';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Required',
              labelText: 'Display Name',
            ),
            controller: displayNameController,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Session name required';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Optional',
              labelText: 'Session Password',
            ),
            controller: sessionPwdController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Optional',
              labelText: 'SessionIdleTimeoutMins',
            ),
            controller: sessionTimeoutMinController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Required (1 for Host, 0 for attendee)',
              labelText: 'Role Type',
            ),
            controller: roleTypeController,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Session name required';
              }
              return null;
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                if (sessionTimeoutMinController.text == "") {
                  sessionTimeoutMinController.text = "40";
                }
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, callZoomPageRoutes,
                      arguments: CallArguments(
                          sessionNameController.text,
                          sessionPwdController.text,
                          displayNameController.text,
                          sessionTimeoutMinController.text,
                          roleTypeController.text,
                          widget.isJoin));
                }
              },
              child: Container(
                height: 50.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xff0070f3),
                ),
                child: Center(
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CallArguments {
  final bool isJoin;
  final String sessionName;
  final String sessionPwd;
  final String displayName;
  final String sessionIdleTimeoutMins;
  final String role;

  CallArguments(this.sessionName, this.sessionPwd, this.displayName,
      this.sessionIdleTimeoutMins, this.role, this.isJoin);
}

class JoinScreen extends StatefulWidget {
  const JoinScreen({Key? key}) : super(key: key);

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as JoinArguments;

    return BasePage(children: [
      Container(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                args.isJoin ? "Join a Session" : "Create a Session",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              SessionForm(
                isJoin: args.isJoin,
                sessionName: args.sessionName,
                sessionPwd: args.sessionPwd,
                sessionTimeout: args.sessionTimeout,
                displayName: args.displayName,
                roleType: args.roleType,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
