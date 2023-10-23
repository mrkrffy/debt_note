import 'package:debt_note/application/common/enums/ledger_type.dart';
import 'package:debt_note/features/ledger/data/models/ledger.dart';
import 'package:debt_note/features/ledger/data/repositories/ledger_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debts_provider.g.dart';

@riverpod
class Debts extends _$Debts {
  @override
  Future<List<Ledger>> build({
    String? query,
    LedgerType? type,
  }) {
    final ledgersRepository = ref.watch(ledgersRepositoryProvider);

    return ledgersRepository.getLedgers();
  }

  Future<void> addLedger(Ledger ledger) async {
    final ledgersRepository = ref.watch(ledgersRepositoryProvider);

    ledgersRepository.addLedger(ledger);
  }
}
