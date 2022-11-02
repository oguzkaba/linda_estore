import '../../init/network/model/network_error_model.dart';

class BaseResponseModel {
  final Object? object;
  final NetworkErrorModel? error;

  BaseResponseModel({this.object, this.error});
}
