import 'package:flutter/material.dart';

enum TypeField {
  required,
  optional
}

enum TypeInputField {
  text,
  number,
  date,
  selection
}

class StepFieldModel {
  final String title;
  final TypeField typeField;
  String? descriptionTitle;
  final List<DetailFieldModel> listField;

  StepFieldModel({required this.title, required this.typeField, this.descriptionTitle, required this.listField});
}

class DetailFieldModel {
  final TypeInputField typeInputField;
  final Icon prefixIcon;
  Icon? extraIcon;

  DetailFieldModel({required this.typeInputField, required this.prefixIcon, this.extraIcon});
}