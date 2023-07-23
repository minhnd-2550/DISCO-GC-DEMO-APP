import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/booth_joining/zoom_video_sdk_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/seminar/seminar_enter_view_model.dart';
import 'package:flutter_clean_architecture/src/data/model/seminar_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const seminarEnterPageRoutes = '/seminar';

final seminarEnterViewModelProvider = ChangeNotifierProvider((ref) => SeminarEnterViewModel());

class SeminarEnterPage extends HookConsumerWidget {
  const SeminarEnterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SeminarEnterViewModel seminarEnterViewModel = ref.watch(seminarEnterViewModelProvider);
    SeminarDataModel seminarDataModel = seminarEnterViewModel.seminarDataModel;
    bool isLoading = seminarEnterViewModel.loading;

    if(isLoading == true) {
      return const Loading();
    } else if(seminarDataModel.onlineSeminar != null) {
      return BasePage(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                seminarDataModel.onlineSeminar!.name ?? "",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                seminarDataModel.onlineSeminar!.content ?? "",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: seminarDataModel.onlineSeminar!.periodOfExhibition ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '会場は、終了時間経過後10分で強制終了します.',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    // width: 100,
                    // height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    child: const Padding(
                      padding:
                      EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 10),
                      child: Text(
                        "参加企業",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    // width: 100,
                    // height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    child: const Padding(
                      padding:
                      EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 10),
                      child: Text(
                        "※加マニュアル",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'イベント期間が終了すると、「オファーリクエスト」および「ダイレクトメッセージ」の機能は利用できなくなります。',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                '参加企業',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              Table(
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
                                '企業名',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              )),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          color: Colors.grey[350],
                          child: const Center(
                              child: Text(
                                '機能',
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
                              'プ名',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Container(
                          color: Colors.grey[350],
                          child: const Center(
                            child: Text(
                              '田菜対象',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Container(
                          color: Colors.grey[350],
                          child: const Center(
                            child: Text(
                              '入室',
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
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            seminarDataModel.boothCompanies?[0]?.boothCompany?.officialName ?? "",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.amber[50],
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10, bottom: 10),
                                child: Icon(Icons.speaker, color: Colors.grey),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.pink[50],
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10, bottom: 10),
                                child:
                                Icon(Icons.message_sharp, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            seminarDataModel.boothCompanies?[0]?.boothCompanyName ?? "",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            seminarDataModel.boothCompanies?[0]?.description ?? "",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _goToBooth(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: const Text("入室"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            seminarDataModel.boothCompanies?[1]?.boothCompany?.officialName ?? "",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.amber[50],
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10, bottom: 10),
                                child: Icon(Icons.speaker, color: Colors.grey),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.pink[50],
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10, bottom: 10),
                                child:
                                Icon(Icons.message_sharp, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            seminarDataModel.boothCompanies?[1]?.boothCompanyName ?? "",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                          child: Text(
                            seminarDataModel.boothCompanies?[1]?.description ?? "",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _goToBooth(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: const Text("入室"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width - 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '【オファーリクエストについて】\n●関心を持った企業には、オファーのリクエストを送信することができます。イベント開催期間内であれは、キャンセルも可能です。オファーリクエストは、イベント終了後も2週間の間は企業に表示されます。\n ※「オファーリクエスト」はイベント開催時間内のみ利用できます。イベントが終了するとご利用いただけなくなりますのでご注意ください。\n※リクエストを送信しても、必ずオファーが届くわけではありませんのでご了承ください。\n\n【ダイレクトメッセージについて】\n●イベント開催時間中に、参加企業から「ダイレクトメッセージ」が届く場合があります。「ダイレクトメッセージ」には返信することも可能です。\n※ 「ダイレクトメッセージ」はイベント開催時間内のみ利用できます。\nイベントが終了するとご利用いただけなくなりますのでご注意ください。',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]);
    } else {
      return SizedBox();
    }
  }

  void _goToBooth(BuildContext context) async {
    await Navigator.pushNamed(context, zoomVideoSdkProviderPageRoutes);
  }
}
