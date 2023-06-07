import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import 'package:flutter_clean_architecture/src/presentation/ui/widget/button_with_icon.dart';

enum OfferTypes { preContact, offer }

enum OfferStatuses { isRead, applied, accepted, consider }

class OfferCard extends StatelessWidget {
  final bool? contractExpired;
  final OfferTypes offerTypes;
  final OfferStatuses offerStatus;
  const OfferCard(
      {Key? key,
      this.contractExpired,
      required this.offerTypes,
      required this.offerStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("2023/03/07 16:21:43"),
              SizedBox(
                width: 2.0,
              ),
              Text("5 days"),
            ],
          ),
          badges.Badge(
            position: badges.BadgePosition.topStart(top: -10, start: -3),
            badgeContent: Row(
              children: [
                Icon(
                  offerStatus == OfferStatuses.accepted ||
                          offerStatus == OfferStatuses.applied
                      ? Icons.check_circle
                      : Icons.markunread,
                  size: 16.0,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  offerStatus == OfferStatuses.accepted ||
                          offerStatus == OfferStatuses.applied
                      ? "承諾済み"
                      : "未読",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.square,
              borderRadius: BorderRadius.circular(5),
              padding: const EdgeInsets.only(
                  top: 3.0, right: 8.0, bottom: 3.0, left: 5.0),
              badgeColor: offerStatus == OfferStatuses.accepted ||
                      offerStatus == OfferStatuses.applied
                  ? const Color(0xFF999999)
                  : const Color(0xFFfa4141),
            ),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xffe0ffff), Color(0xfffefefe)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                  border: Border.all(
                      color: const Color.fromRGBO(222, 222, 222, 1), width: 1)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Image.network(
                    'https://placehold.co/600x400/png',
                    width: 80.0,
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  if (contractExpired == true) ...[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color(0xfffffbe3),
                            Color(0xfffffbe3),
                            Color.fromRGBO(255, 224, 48, 0.4),
                            Color.fromRGBO(255, 224, 48, 0.4),
                          ],
                              stops: [
                            0.0,
                            0.5,
                            0.5,
                            1.0
                          ],
                              begin: Alignment(0.1, 0.1),
                              end: Alignment(0.2, 0.2),
                              transform: GradientRotation(136.0),
                              tileMode: TileMode.repeated)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.warning, size: 20.0),
                          Text(
                            "この企業は現在利用期間が終了しています。",
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 12.0,
                                height: 1.8),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                  ],
                  const Text(
                    'thảo company + 10 edited 1  edited 1  edited 1  edited 1  edited 1  edited 1  edited 1  edited 1  ed',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const Text(
                    '業種 edit Dat',
                    style: TextStyle(
                        fontSize: 12.0,
                        height: 1.8,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(153, 153, 153, 1)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFF999999), width: 1.0),
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xfffffbe3),
                              Color(0xfffffbe3),
                              Color.fromRGBO(255, 224, 48, 0.4),
                              Color.fromRGBO(255, 224, 48, 0.4),
                            ],
                            stops: [
                              0.0,
                              0.5,
                              0.5,
                              1.0
                            ],
                            begin: Alignment(0.1, 0.1),
                            end: Alignment(0.2, 0.2),
                            transform: GradientRotation(136.0),
                            tileMode: TileMode.repeated)),
                    child: RichText(
                        text: const TextSpan(
                            text: 'thảo company + 10 edited 1  edited 1  ',
                            style: TextStyle(
                                color: Colors.black, fontSize: 12.0))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 6.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: offerTypes == OfferTypes.preContact
                                  ? [
                                      const Color(0xFF00C6FB),
                                      const Color(0xFF6FD0DE)
                                    ]
                                  : [
                                      const Color(0xFFffc680),
                                      const Color(0xFFffaf65)
                                    ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6.0))),
                        child: Text(
                          offerTypes == OfferTypes.preContact
                              ? "プレコンタクト"
                              : "応募オファー",
                          style: const TextStyle(
                              fontSize: 10.0, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      const Text(
                        "test 12222",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ButtonWithIcon(
                    textFontSize: 14.0,
                    iconSize: 16.0,
                    height: 32.0,
                    text: '詳細を見る',
                    rightIcons: Icons.arrow_forward_ios,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
