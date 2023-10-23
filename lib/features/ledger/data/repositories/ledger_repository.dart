import 'package:debt_note/features/ledger/data/models/ledger.dart';
import 'package:debt_note/features/ledger/data/services/ledger_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ledger_repository.g.dart';

abstract interface class LedgersRepository {
  Future<List<Ledger>> getLedgers();
  Future<void> addLedger(Ledger ledger);
}

class LedgersRepositoryImpl implements LedgersRepository {
  LedgersRepositoryImpl({required this.ledgerService});

  final LedgersService ledgerService;

  @override
  Future<List<Ledger>> getLedgers() async {
    final response = await ledgerService.fetchLedger();
    final debts = response.docs.map((doc) => LedgerMapper.fromMap(doc.data())).toList();

    return debts;
  }

  @override
  Future<void> addLedger(Ledger ledger) => ledgerService.addLedger(ledger);
}

@riverpod
LedgersRepository ledgersRepository(LedgersRepositoryRef ref) =>
    LedgersRepositoryImpl(ledgerService: ref.watch(ledgersServiceProvider));
