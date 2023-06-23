import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/gen/assets.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/noti_icon.dart';
import 'package:flutter_clean_architecture/src/presentation/model/top_notification.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_content_form.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';

const topPageRouter = '/';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final double iconWidth = screenWidth / 7;
    final List<TopNotification> listIconNoti = [
      TopNotification(icon: Icon(
        Icons.menu,
        color: ColorName.primaryStepColor,
      ), notiNumber: 0),
      TopNotification(icon: Icon(
        Icons.send,
        color: ColorName.primaryStepColor,
      ), notiNumber: 0),
      TopNotification(icon: Icon(
        Icons.bookmarks,
        color: ColorName.primaryStepColor,
      ), notiNumber: 4),
      TopNotification(icon: Icon(
        Icons.volume_up_rounded,
        color: ColorName.primaryStepColor,
      ), notiNumber: 0),
      TopNotification(icon: Icon(
        Icons.heart_broken,
        color: ColorName.primaryStepColor,
      ), notiNumber: 1),
      TopNotification(icon: Icon(
        Icons.person,
        color: ColorName.primaryStepColor,
      ), notiNumber: 0),
      TopNotification(icon: Icon(
        Icons.book,
        color: ColorName.primaryStepColor,
      ), notiNumber: 0),
    ];

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: ColorName.primaryStepColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        titleSpacing: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                'GlobalCareer.com',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.lock, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                        Icons.keyboard_arrow_down, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            width: screenWidth,
            height: 70,
            child: Row(
              children: [
                for (int i = 0; i < 7; i++)
                  Container(
                    width: iconWidth,
                    height: 50,
                    // child: NotificationIcon(width: screenWidth, height: 100),
                    child: NotificationIcon(width: screenWidth,
                        height: 100,
                        icon: listIconNoti[i].icon,
                        notiCount: listIconNoti[i].notiNumber),
                  ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                BaseContentForm(
                  title: '',
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Text(
                          "2週間以内に開催の参加予約しているイベント",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 10),
                        const Text(
                          "イベントの開催日時が近づいても「税閉URLの設定待ちです」のままの場合は、メッセージより企業に問い合わせをお願いします。",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .fill,
                                    child: Container(
                                      color: Colors.grey[350],
                                      child: Center(
                                          child: Text(
                                            '開催日時・場所',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .middle,
                                    child: Container(
                                      color: Colors.grey[350],
                                      child: Center(
                                          child: Text(
                                            '開催企業 / イベントタイトル',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .fill,
                                    child: Container(
                                      color: Colors.grey[350],
                                      child: Center(
                                        child: Text(
                                          '参加',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.0, top: 8.0, bottom: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Container(
                                            width: 102,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Row(
                                              children: [
                                                Icon(Icons.computer,
                                                  color: Colors.grey,),
                                                Text(
                                                  'オンライン',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .normal,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '2023年',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            '05月17日  17:19',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            '(JST) ~  (96 時間)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                      verticalAlignment: TableCellVerticalAlignment
                                          .fill,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 3.0,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'GlobalCareer.com事務局 / Premium session Toan',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .fill,
                                    child: Center(child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlue[200],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: Text("地加する>"),
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.0, top: 8.0, bottom: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Container(
                                            width: 102,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Row(
                                              children: [
                                                Icon(Icons.computer,
                                                  color: Colors.grey,),
                                                Text(
                                                  'オンライン',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .normal,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '2023年',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            '05月26日  00:00',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            '(JST) ~  (96 時間)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .fill,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 3.0,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'GlobalCareer.com事務局 / Khanh seminar 9.5.1',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment
                                        .fill,
                                    child: Center(child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.grey[350],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: Text(
                                          "地加する>",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                      ),
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  fromStepForm: false,
                ),
                BaseContentForm(
                  title: '',
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Text(
                          "こちらの企業からメッセージが届いていま\nす。確認しましょう。",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: Container(
                            width: 100,
                            height: 70,
                            child: Assets.images.mountaint.image(
                              height: 70,
                              width: 100,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        const Text(
                          "Huyen offical edit",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  fromStepForm: false,
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}