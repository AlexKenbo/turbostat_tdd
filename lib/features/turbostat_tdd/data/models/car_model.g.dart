// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return CarModel(
    carId: json['carId'] as String,
    carVin: json['carVin'] as String,
    carModel: json['carModel'] as String,
    carName: json['carName'] as String,
    carMark: json['carMark'] as String,
    carYear: json['carYear'] as int,
    licencePlate: json['licencePlate'] as String,
    tankVolume: json['tankVolume'] as int,
    fuelType: json['fuelType'] as String,
    carNote: json['carNote'] as String,
  );
}

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      'carId': instance.carId,
      'carVin': instance.carVin,
      'carModel': instance.carModel,
      'carName': instance.carName,
      'carMark': instance.carMark,
      'carYear': instance.carYear,
      'tankVolume': instance.tankVolume,
      'fuelType': instance.fuelType,
      'licencePlate': instance.licencePlate,
      'carNote': instance.carNote,
    };
