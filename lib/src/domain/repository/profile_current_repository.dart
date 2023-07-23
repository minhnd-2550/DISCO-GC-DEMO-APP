import 'package:flutter_clean_architecture/src/data/model/profile_current_data_model.dart';

abstract class ProfileCurrentRepository {
  Future<ProfileCurrentDataModel> fetchProfile();
}