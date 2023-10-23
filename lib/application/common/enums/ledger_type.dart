import 'package:dart_mappable/dart_mappable.dart';

part 'ledger_type.mapper.dart';

@MappableEnum()
enum LedgerType {
  debt,
  loan;

  bool get isDebt => this == debt;
  bool get isLoan => this == loan;
}
