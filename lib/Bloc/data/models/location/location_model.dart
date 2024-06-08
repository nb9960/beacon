import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:beacon/Bloc/domain/entities/location/location_entity.dart';
part 'location_model.g.dart';

@HiveType(typeId: 40)
@JsonSerializable()
class LocationModel implements LocationEntity {
  @HiveField(0)
  final String? lat;
  @HiveField(1)
  final String? lon;

  LocationModel({
    this.lat,
    this.lon,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  LocationModel copyWithModel({
    String? lat,
    String? long,
  }) {
    return LocationModel(
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
    );
  }

  @override
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      throw UnimplementedError();
}