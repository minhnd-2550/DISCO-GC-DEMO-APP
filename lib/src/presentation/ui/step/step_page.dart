import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_content_form.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/avatar_input.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/hexagon_shape.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/gender_selection.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/step_text_input.dart';
import 'package:flutter_clean_architecture/src/presentation/model/step_field_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/footer.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';

const stepPageRoutes = '/step';

class StepPage extends StatelessWidget {
  const StepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<StepFieldModel> listInfoField = [
      StepFieldModel(title: "氏名", typeField: TypeField.required, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.text,
            prefixIcon: const Icon(Icons.person, color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.text,
            prefixIcon: const Icon(Icons.person, color: Colors.grey, size: 20))
      ]),
      StepFieldModel(
          title: "氏名（カタカナ）",
          typeField: TypeField.required,
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon:
                    const Icon(Icons.person, color: Colors.grey, size: 20)),
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon:
                    const Icon(Icons.person, color: Colors.grey, size: 20))
          ]),
      StepFieldModel(
          title: "ニックネーム必",
          typeField: TypeField.required,
          descriptionTitle: "個人情報保護のため、本名を使わないでください。ニックネームは企業に公開されます。",
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon:
                    const Icon(Icons.person, color: Colors.grey, size: 20))
          ]),
      StepFieldModel(
          title: "現住所",
          typeField: TypeField.required,
          descriptionTitle: "半角数字・ハイフン［・1あり 例：112-0004",
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon:
                    const Icon(Icons.home, color: Colors.grey, size: 20)),
            DetailFieldModel(
                typeInputField: TypeInputField.selection,
                prefixIcon:
                    const Icon(Icons.public, color: Colors.grey, size: 20),
                extraIcon: const Icon(Icons.keyboard_arrow_down,
                    color: Colors.grey, size: 20)),
            DetailFieldModel(
                typeInputField: TypeInputField.selection,
                prefixIcon:
                    const Icon(Icons.location_on, color: Colors.grey, size: 20),
                extraIcon: const Icon(Icons.keyboard_arrow_down,
                    color: Colors.grey, size: 20)),
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon: const Icon(Icons.location_on,
                    color: Colors.grey, size: 20)),
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon: const Icon(Icons.location_on,
                    color: Colors.grey, size: 20)),
          ]),
      StepFieldModel(title: "その他住所", typeField: TypeField.optional, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.text,
            prefixIcon: const Icon(Icons.home, color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.selection,
            prefixIcon: const Icon(Icons.public, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.selection,
            prefixIcon:
                const Icon(Icons.location_on, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.text,
            prefixIcon:
                const Icon(Icons.location_on, color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.text,
            prefixIcon:
                const Icon(Icons.location_on, color: Colors.grey, size: 20)),
      ]),
      StepFieldModel(
          title: "TEL",
          typeField: TypeField.required,
          descriptionTitle: "半角数字・ハイフン［-］あり例：080-1234-5678",
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.selection,
                prefixIcon:
                    const Icon(Icons.public, color: Colors.grey, size: 20),
                extraIcon: const Icon(Icons.keyboard_arrow_down,
                    color: Colors.grey, size: 20)),
            DetailFieldModel(
                typeInputField: TypeInputField.number,
                prefixIcon: const Icon(Icons.local_phone,
                    color: Colors.grey, size: 20)),
          ]),
      StepFieldModel(
          title: "メールアドレス",
          typeField: TypeField.optional,
          descriptionTitle: "vu.khanh.huyen+0119@sun-asterisk.com",
          listField: []),
      StepFieldModel(
          title: "労働許可／ピザ",
          typeField: TypeField.required,
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.selection,
                prefixIcon:
                    const Icon(Icons.public, color: Colors.grey, size: 20),
                extraIcon: const Icon(Icons.keyboard_arrow_down,
                    color: Colors.grey, size: 20)),
            DetailFieldModel(
                typeInputField: TypeInputField.selection,
                prefixIcon: const Icon(Icons.content_copy,
                    color: Colors.grey, size: 20),
                extraIcon: const Icon(Icons.keyboard_arrow_down,
                    color: Colors.grey, size: 20)),
          ]),
      StepFieldModel(title: "生年月日", typeField: TypeField.required, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.date,
            prefixIcon:
                const Icon(Icons.calendar_month, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
      ]),
    ];

    final List<StepFieldModel> listEducationField = [
      StepFieldModel(title: "学校所在地", typeField: TypeField.required, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.selection,
            prefixIcon: const Icon(Icons.public, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.selection,
            prefixIcon:
                const Icon(Icons.location_on, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
      ]),
      StepFieldModel(
          title: "学校名",
          typeField: TypeField.required,
          descriptionTitle: "学校名が選択肢にない場合は、テキストで直接入力してください",
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon:
                    const Icon(Icons.school, color: Colors.grey, size: 20)),
          ]),
      StepFieldModel(title: "専攻", typeField: TypeField.required, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.selection,
            prefixIcon: const Icon(Icons.home, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.selection,
            prefixIcon: const Icon(Icons.book, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.text,
            prefixIcon:
                const Icon(Icons.create_rounded, color: Colors.grey, size: 20)),
      ]),
      StepFieldModel(
          title: "在籍ステータス",
          typeField: TypeField.required,
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.selection,
                prefixIcon: const Icon(Icons.assignment_ind_rounded,
                    color: Colors.grey, size: 20),
                extraIcon: const Icon(Icons.keyboard_arrow_down,
                    color: Colors.grey, size: 20)),
          ]),
      StepFieldModel(title: "学位任", typeField: TypeField.optional, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.selection,
            prefixIcon: const Icon(Icons.assignment_ind_rounded,
                color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
      ]),
      StepFieldModel(title: "GPA", typeField: TypeField.optional, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.text,
            prefixIcon:
                const Icon(Icons.create_rounded, color: Colors.grey, size: 20)),
      ]),
      StepFieldModel(title: "在籍期間", typeField: TypeField.required, listField: [
        DetailFieldModel(
            typeInputField: TypeInputField.date,
            prefixIcon:
                const Icon(Icons.calendar_month, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
        DetailFieldModel(
            typeInputField: TypeInputField.date,
            prefixIcon:
                const Icon(Icons.calendar_month, color: Colors.grey, size: 20),
            extraIcon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.grey, size: 20)),
      ]),
      StepFieldModel(
          title: "在籍中に力を入れたこと",
          typeField: TypeField.optional,
          descriptionTitle: "在学中に学んだことの詳細や課外活動、表を受けたさとなどあなたの学生生活をアピールしてください",
          listField: [
            DetailFieldModel(
                typeInputField: TypeInputField.text,
                prefixIcon: const Icon(Icons.create_rounded,
                    color: Colors.grey, size: 20)),
          ]),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        toolbarHeight: 55,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF26BFA1),
                Color(0xFF1AA1A3),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        titleSpacing: 0,
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
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
                    child: const Icon(Icons.keyboard_arrow_down,
                        color: Colors.white),
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double containerWidth = constraints.maxWidth;
                  double hexagonSize = containerWidth / 5;

                  return Row(
                    children: List.generate(
                      5,
                      (index) => HexagonShape(
                        size: hexagonSize,
                        color: index == 0
                            ? ColorName.primaryStepColor
                            : Colors.white,
                        text: index.toString(),
                        isFirstStep: index == 0 ? true : false,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                BaseContentForm(
                  title: '基本情報',
                  fromStepForm: true,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const AvatarInput(),
                        const SizedBox(height: 30),
                        const GenderSelection(
                            label: "敬称", listTitle: ['Mr.', 'Ms.', 'その他']),
                        const SizedBox(height: 30),
                        Column(
                          children: List.generate(
                            listInfoField.length,
                            (index) {
                              return Column(
                                children: [
                                  StepTextFieldInput(
                                      stepFieldModel: listInfoField[index]),
                                  const SizedBox(height: 30.0),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                BaseContentForm(
                  title: '学歴',
                  fromStepForm: true,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Column(
                          children: List.generate(
                            listEducationField.length,
                            (index) {
                              return Column(
                                children: [
                                  StepTextFieldInput(
                                      stepFieldModel:
                                          listEducationField[index]),
                                  const SizedBox(height: 30.0),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: ColorName.primaryStepColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('保存する'),
                    ),
                  ),
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
