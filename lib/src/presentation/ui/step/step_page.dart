import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/base_content_form.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/text_input.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/avatar_input.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/hexagon_shape.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/gender_selection.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';

const stepPageRoutes = '/';

class StepPage extends StatelessWidget {
  const StepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    child: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
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
            padding: EdgeInsets.only(top: 10),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double containerWidth = constraints.maxWidth;
                  double hexagonSize = containerWidth / 5;

                  return Row(
                    children: List.generate(
                      5,
                      (index) => HexagonShape(
                        size: hexagonSize,
                        color: index == 0 ? ColorName.primaryStepColor : Colors.white,
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
            child: BaseContentForm(
              title: '基本情報',
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const AvatarInput(),
                    const SizedBox(height: 30),
                    const GenderSelection(label: "敬称", listTitle: ['Mr.', 'Ms.', 'その他']),
                    const SizedBox(height: 30),
                    const TextFieldInput(label: "氏名", isRequired: true, prefixIcon: Icon(Icons.person, color: Colors.grey, size: 15)),
                  ],
                ),
              ),
              fromStepForm: true,
            ),
          ),
        ],
      ),
    );
  }
}
