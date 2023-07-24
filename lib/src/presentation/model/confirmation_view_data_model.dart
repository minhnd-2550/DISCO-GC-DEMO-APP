import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item_mapper.dart';

class ConfirmationViewDataModel {
  final bool status;

  ConfirmationViewDataModel({required this.status});
}

class ConfirmationViewDataModelMapper
    extends ModelItemMapper<ConfirmationDataModel, ConfirmationViewDataModel> {
  @override
  ConfirmationViewDataModel mapperTo(ConfirmationDataModel data) {
    return ConfirmationViewDataModel(status: false);
  }
}
