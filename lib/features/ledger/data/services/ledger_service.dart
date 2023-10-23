import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debt_note/application/common/constants/firestore_collection.dart';
import 'package:debt_note/features/ledger/data/models/ledger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ledger_service.g.dart';

abstract interface class LedgersService {
  Future<QuerySnapshot<Map<String, dynamic>>> fetchLedger();
  Future<void> addLedger(Ledger ledger);
}

class LedgersServiceImpl implements LedgersService {
  LedgersServiceImpl({
    required this.firestore,
  });

  final FirebaseFirestore firestore;

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> fetchLedger() => firestore.collection(FirestoreCollection.ledgers).get();

  @override
  Future<void> addLedger(Ledger ledger) =>
      firestore.collection(FirestoreCollection.ledgers).doc(ledger.id).set(ledger.toMap());
}

@riverpod
LedgersService ledgersService(LedgersServiceRef ref) => LedgersServiceImpl(firestore: FirebaseFirestore.instance);
