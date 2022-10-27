import 'package:flutter/services.dart';
import '../../../core/extansions/asset_extansion.dart';
import '../model/fake_reviews_model.dart';

class MockDataService {
  static MockDataService? _instance;
  static MockDataService get instance {
    _instance ??= MockDataService._init();
    return _instance!;
  }

  MockDataService._init();
  Future<List<MockDataModel>> readLocalJson() async {
    String response = await rootBundle.loadString("mock_reviews".toJSON);
    var data = mockDataModelFromJson(response);
    return data;
  }
}
