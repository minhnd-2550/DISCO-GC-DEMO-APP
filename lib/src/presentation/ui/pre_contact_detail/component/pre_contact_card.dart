import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/data/model/company_offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/detail_offer_data_model.dart';

import 'package:flutter_clean_architecture/src/presentation/ui/widget/button_with_icon.dart';

// ignore: constant_identifier_names
enum OfferTypes { pre_contact_user, user_offer }

enum OfferStatuses { isRead, applied, accepted, consider }

class PreContactCard extends StatelessWidget {
  final String offerStatus;
  final String? deadline;
  final CompanyOfferDataModel company;
  final int? remainDays;
  final DetailOfferDataModel preContact;

  const PreContactCard({
    Key? key,
    required this.offerStatus,
    this.remainDays,
    this.deadline,
    required this.company,
    required this.preContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          badges.Badge(
            position: badges.BadgePosition.topStart(top: -14, start: -3),
            badgeContent: Row(
              children: [
                Icon(
                  offerStatus == 'accepted' || offerStatus == 'applied'
                      ? Icons.check_circle
                      : Icons.markunread,
                  size: 16.0,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  offerStatus == 'accepted' || offerStatus == 'applied'
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
              badgeColor: offerStatus == 'accepted' || offerStatus == 'applied'
                  ? const Color(0xFF999999)
                  : const Color(0xFFfa4141),
            ),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF999999), width: 1)),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 15.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFF999999), width: 1.0),
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xfff9f9f9),
                              Color(0xfff9f9f9),
                              Color.fromRGBO(255, 213, 205, 0.3),
                              Color.fromRGBO(255, 213, 205, 0.3),
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
                        text: TextSpan(
                            text:
                                '${preContact.userPosition}　${preContact.userName}があなたの',
                            children: [
                              TextSpan(
                                text: '${preContact.interestedPoint}',
                                style: const TextStyle(
                                    backgroundColor: Color(0xFF9CF196),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16.0),
                              ),
                              const TextSpan(
                                text: 'に注目しました！',
                              ),
                            ],
                            style: const TextStyle(
                                height: 1.8,
                                color: Colors.black,
                                fontSize: 12.0))),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 6.0),
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF00C6FB), Color(0xFF6FD0DE)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0))),
                        child: const Text(
                          "プレコンタクトオファー",
                          style: TextStyle(fontSize: 10.0, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Flexible(
                        child: Text(
                          preContact.subject!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Color(0xfff9f9f9),
                              Color(0xfff9f9f9),
                              Color.fromRGBO(255, 213, 205, 0.3),
                              Color.fromRGBO(255, 213, 205, 0.3),
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
                          children: [
                            Flexible(
                              child: Text(
                                preContact.offerReason!,
                                style: const TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12.0,
                                    height: 1.8),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        color: const Color(0xfffeada6),
                        child: const Text(
                          'オファー理由',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Text(preContact.content!),
                  const SizedBox(
                    height: 12,
                  ),
                  const ButtonWithIcon(
                    textFontSize: 14.0,
                    iconSize: 16.0,
                    height: 38.0,
                    text: 'プレコンタクトオファーを受ける',
                    icons: Icons.send,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: ButtonWithIcon(
                          textFontSize: 14.0,
                          iconSize: 16.0,
                          height: 38.0,
                          text: '検討する',
                          icons: Icons.add_shopping_cart,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: ButtonWithIcon(
                          textFontSize: 14.0,
                          iconSize: 16.0,
                          height: 38.0,
                          text: 'おことわり',
                          icons: Icons.do_not_touch,
                        ),
                      )
                    ],
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
