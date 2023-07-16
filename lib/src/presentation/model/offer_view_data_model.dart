import 'package:flutter_clean_architecture/src/data/model/company_offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/detail_offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item_mapper.dart';

class OfferViewDataModel with ModelItem {
  final int id;
  final bool contractExpired;
  final String offerType;
  final String status;
  final bool isRead;
  final DetailOfferDataModel? details;
  final bool? participatedInVideoAudition;
  final DateTime? sendTime;
  final CompanyOfferDataModel? company;
  final int? remainDays;
  final bool applied;

  OfferViewDataModel(
      {required this.id,
      required this.contractExpired,
      required this.offerType,
      required this.status,
      required this.isRead,
      this.details,
      this.participatedInVideoAudition,
      this.sendTime,
      this.company,
      this.remainDays,
      required this.applied});
}

class OfferViewDataModelMapper
    extends ModelItemMapper<OfferDataModel, OfferViewDataModel> {
  @override
  OfferViewDataModel mapperTo(OfferDataModel data) {
    return OfferViewDataModel(
      id: data.id ?? -1,
      contractExpired: data.contractExpired ?? false,
      offerType: data.offerType ?? 'user_offer',
      status: data.status ?? 'accepted',
      isRead: data.isRead ?? false,
      details: data.details,
      participatedInVideoAudition: data.participatedInVideoAudition,
      sendTime: data.sendTime,
      company: data.company,
      remainDays: data.remainDays,
      applied: data.applied ?? false,
    );
  }
}
