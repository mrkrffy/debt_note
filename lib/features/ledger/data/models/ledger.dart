import 'package:dart_mappable/dart_mappable.dart';
import 'package:debt_note/application/common/enums/ledger_type.dart';
import 'package:debt_note/features/ledger/data/models/counter_party.dart';

part 'ledger.mapper.dart';

@MappableClass()
class Ledger with LedgerMappable {
  const Ledger({
    required this.id,
    required this.type,
    this.amount = 0,
    required this.counterParty,
    required this.createdDate,
    this.updatedDate,
  });

  final String id;
  final LedgerType type;
  final double amount;
  final CounterParty counterParty;
  final DateTime createdDate;
  final DateTime? updatedDate;

  bool get isDebt => type.isDebt;
  bool get isLoan => type.isLoan;
}
