import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';
part 'bank.g.dart';

@freezed
class Bank with _$Bank {
  Bank._();
  factory Bank({
    required String cardExpire,
  }) = _Bank;
  bool get isExpired => 23 == int.parse(cardExpire.substring(3));

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}