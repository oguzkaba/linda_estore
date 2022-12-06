// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MockReviewsModel _$$_MockReviewsModelFromJson(Map<String, dynamic> json) =>
    _$_MockReviewsModel(
      id: json['id'] as int,
      fullName: json['fullName'] as String,
      review: json['review'] as String,
      rate: json['rate'] as int,
      ipAddress: json['ipAddress'] as String,
    );

Map<String, dynamic> _$$_MockReviewsModelToJson(_$_MockReviewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'review': instance.review,
      'rate': instance.rate,
      'ipAddress': instance.ipAddress,
    };
