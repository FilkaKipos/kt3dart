import 'package:freezed_annotation/freezed_annotation.dart';

part 'adress.freezed.dart';
part 'adress.g.dart';

@freezed
class Address with _$Address {

  factory Address({
    @Default('') String address,
    @Default('') String city,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}