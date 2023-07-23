import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item_mapper.dart';

class RegistrationViewDataModel {
  final bool status;

  RegistrationViewDataModel({required this.status});
}

class RegistrationViewDataModelMapper
    extends ModelItemMapper<RegistrationDataModel, RegistrationViewDataModel> {
  @override
  RegistrationViewDataModel mapperTo(RegistrationDataModel data) {
    return RegistrationViewDataModel(status: false);
  }
}
