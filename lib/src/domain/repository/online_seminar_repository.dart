import 'package:flutter_clean_architecture/src/data/model/seminar_data_model.dart';

abstract class OnlineSeminarRepository {
  Future<SeminarDataModel> fetchSeminar();
}