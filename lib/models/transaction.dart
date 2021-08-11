import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final DateTime date;
  final String title;
  final double amount;
  Transaction(
      {required this.id,
      required this.date,
      required this.amount,
      required this.title});
}
