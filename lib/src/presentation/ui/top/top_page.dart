import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/assets.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/seminar/seminar_enter.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_content_form.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/top/top_page_view_model.dart';
import 'package:flutter_clean_architecture/src/data/model/top_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:flutter_clean_architecture/src/data/model/event_reservations_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/top/component/top_page_table_row.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const topPageRoutes = '/top';

final topPageViewModelProvider =
ChangeNotifierProvider((ref) => TopPageViewModel());

class TopPage extends HookConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TopPageViewModel topPageViewModel = ref.watch(topPageViewModelProvider);

    TopDataModel topDataModel =
        topPageViewModel.topDataModel;
    bool isLoading = topPageViewModel.loading;
    List<EventReservationsDataModel> eventReservations = topDataModel.eventReservations ?? [];

    if(isLoading == true) {
      return const Loading();
    } else if (topPageViewModel.topDataModel.eventReservations != null) {
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
                        ...List.generate(
                          eventReservations.length,
                              (index) {
                            final contentName = eventReservations[index].content! + "/" + eventReservations[index].name!;
                            return TableRow(
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
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.fill,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 3.0,
                                    ),
                                    child: Center(
                                      child: Text(
                                        contentName,
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
                                        if(eventReservations[index].hasOpeningSeminar == true) {
                                          _goToSeminarEnter(context);
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: eventReservations[index].hasOpeningSeminar ?? false ? Colors.lightBlue[200] : Colors.grey[350],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: const Text("地加する>"),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
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
    } else {
      return SizedBox();
    }
  }

  void _redirect(BuildContext context, pageRoutes) async {
    await Navigator.pushNamed(context, pageRoutes);
  }

  void _goToSeminarEnter(BuildContext context) async {
    await Navigator.pushNamed(context, seminarEnterPageRoutes);
  }
}
