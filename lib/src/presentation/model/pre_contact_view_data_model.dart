import 'package:flutter_clean_architecture/src/data/model/company_offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/detail_offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/pre_contact_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item_mapper.dart';

class PreContactViewDataModel with ModelItem {
  final int id;
  final String status;
  final bool isRead;
  final DetailOfferDataModel? preContact;
  final String? deadline;
  final CompanyOfferDataModel? company;
  final int? remainDays;

  PreContactViewDataModel({
    required this.id,
    required this.status,
    required this.isRead,
    this.preContact,
    this.deadline,
    this.company,
    this.remainDays,
  });
}

class PreContactViewDataModelMapper
    extends ModelItemMapper<PreContactDataModel, PreContactViewDataModel> {
  @override
  PreContactViewDataModel mapperTo(PreContactDataModel data) {
    return PreContactViewDataModel(
      id: data.id ?? -1,
      status: data.status ?? 'accepted',
      isRead: data.isRead ?? false,
      preContact: data.preContact,
      deadline: data.deadline,
      company: data.company,
      remainDays: data.remainDays,
    );
  }
}
