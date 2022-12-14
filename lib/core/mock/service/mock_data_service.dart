import 'package:flutter/services.dart';
import '../../extensions/asset_extansion.dart';
import '../model/review/mock_reviews_model.dart';

class MockDataService {
  static MockDataService? _instance;
  static MockDataService get instance {
    _instance ??= MockDataService._init();
    return _instance!;
  }

  MockDataService._init();
  Future<List<MockReviewsModel>> readLocalJson() async {
    String response = await rootBundle.loadString('mock_reviews'.toJSON);
    var data = mockReviewsModelFromJson(response);
    return data;
  }
}
