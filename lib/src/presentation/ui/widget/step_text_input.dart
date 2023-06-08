import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/model/step_field_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/assets.gen.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/hexagon_shape.dart';

class StepTextFieldInput extends StatelessWidget {
  const StepTextFieldInput({
    Key? key,
    required this.stepFieldModel,
  }) : super(key: key);

  final StepFieldModel stepFieldModel;

  @override
  Widget build(BuildContext context) {
    List<Widget> stepDetailTextFields = stepFieldModel.listField.map((detailField) {
      return StepDetailTextFieldInput(detailFieldModel: detailField);
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              stepFieldModel.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 4.0),
            Container(
              decoration: BoxDecoration(
                color: stepFieldModel.typeField == TypeField.required ? Colors.redAccent : ColorName.primaryStepColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              padding: const EdgeInsets.symmetric(
                  vertical: 2.0, horizontal: 4.0),
              child: Text(
                stepFieldModel.typeField == TypeField.required ? '必須' : '任套',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        if ((stepFieldModel.descriptionTitle ?? "") != "")
          // const SizedBox(height: 8.0),
          Text(
            stepFieldModel.descriptionTitle ?? "",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 16.0),
        Column(
          children: List.generate(
            stepFieldModel.listField.length,
                (index) {
              return Column(
                children: [
                  StepDetailTextFieldInput(
                    detailFieldModel: stepFieldModel.listField[index],
                  ),
                  SizedBox(height: 16.0),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class StepDetailTextFieldInput extends StatelessWidget {
  final DetailFieldModel detailFieldModel;

  const StepDetailTextFieldInput({
    Key? key,
    required this.detailFieldModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        border: const OutlineInputBorder(),
        prefixIcon: detailFieldModel.prefixIcon,
        suffixIcon: detailFieldModel.extraIcon != null
            ? detailFieldModel.extraIcon
            : null,
      ),
    );
  }
}