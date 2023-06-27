import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  final double width;
  final double height;
  final Icon icon;
  final int notiCount;

  const NotificationIcon(
      {Key? key,
      required this.width,
      required this.height,
      required this.icon,
      required this.notiCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Icon(
            icon.icon,
            color: icon.color,
            size: height * 0.5,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: notiCount > 0
                ? Container(
                    width: height * 0.15,
                    height: height * 0.15,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        notiCount.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.1,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
