import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';
part 'bank.g.dart';

@freezed
class Bank with _$Bank {
  Bank._();
  factory Bank({
    required String cardExpire,
  }) = _Bank;
  bool get isExpired{
    final cardYear = int.parse(cardExpire.substring(3));
    final cardMonth = int.parse(cardExpire.substring(0, 2));
    
    if (cardYear < 23) {
      return true;
    } else if (cardYear == 23 && 11 > cardMonth) {
      return true;
    } else {
      return false; 
    }
  }

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}