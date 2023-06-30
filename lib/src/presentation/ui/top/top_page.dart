import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/assets.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/seminar/seminar_enter.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_content_form.dart';

const topPageRoutes = '/top';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        BaseContentForm(
          title: '',
          fromStepForm: false,
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
                const SizedBox(height: 10),
                const Text(
                  "イベントの開催日時が近づいても「税閉URLの設定待ちです」のままの場合は、メッセージより企業に問い合わせをお願いします。",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Center(
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              color: Colors.grey[350],
                              child: const Center(
                                  child: Text(
                                '開催日時・場所',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Container(
                              color: Colors.grey[350],
                              child: const Center(
                                  child: Text(
                                '開催企業 / イベントタイトル',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              color: Colors.grey[350],
                              child: const Center(
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
                              padding: const EdgeInsets.only(
                                  left: 4.0, top: 8.0, bottom: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      children: const [
                                        Icon(
                                          Icons.computer,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          'オンライン',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    '2023年',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Text(
                                    '05月17日  17:19',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const Text(
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
                          const TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
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
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  _goToSeminarEnter(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightBlue[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Text("地加する>"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, top: 8.0, bottom: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      children: const [
                                        Icon(
                                          Icons.computer,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          'オンライン',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    '2023年',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Text(
                                    '05月26日  00:00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const Text(
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
                          const TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
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
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[350],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Text(
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
        ),
        BaseContentForm(
          title: '',
          fromStepForm: false,
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
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 70,
                    child: Assets.images.mountaint.image(
                      height: 70,
                      width: 100,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Huyen offical edit",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }

  void _goToSeminarEnter(BuildContext context) async {
    await Navigator.pushNamed(context, seminarEnterPageRoutes);
  }
}
