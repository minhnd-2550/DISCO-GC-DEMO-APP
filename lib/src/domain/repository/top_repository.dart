import 'package:flutter_clean_architecture/src/data/model/top_data_model.dart';

abstract class TopRepository {
  Future<TopDataModel> fetchMyPages();
}