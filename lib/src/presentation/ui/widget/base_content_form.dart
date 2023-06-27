import 'package:flutter/material.dart';

class BaseContentForm extends StatelessWidget {
  const BaseContentForm(
      {Key? key,
      required this.title,
      required this.child,
      required this.fromStepForm})
      : super(key: key);
  final Widget child;
  final String title;
  final bool fromStepForm;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        child: ClipRect(
          child: Container(
            margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 6.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                if (title != "")
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF874da2),
                                Color(0xFF884d80),
                              ],
                            ),
                          ),
                          child: fromStepForm
                              ? Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        title == "学歴"
                                            ? Icons.school
                                            : Icons.person,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Center(
                                  child: Text(
                                    title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
