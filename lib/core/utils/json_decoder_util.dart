import 'dart:convert';

import '../../features/auth/login/model/login_response_model.dart';
import '../models/json_decoder_model.dart';

int jwtToGetUserId(LoginResponseModel model) {
  final encodedPayload = model.token.split('.')[1];
  final payloadData =
      utf8.fuse(base64).decode(base64.normalize(encodedPayload));
  final a = jsonDecoderFromJson(payloadData).sub!;
  return a;
}
