import 'package:dart_mappable/dart_mappable.dart';

part 'counter_party.mapper.dart';

@MappableClass()
class CounterParty with CounterPartyMappable {
  CounterParty({
    required this.id,
    required this.name,
    this.imageUrl,
    this.currentTotalDebt = 0,
    this.currentTotalLoan = 0,
    this.allTimeTotalDebt = 0,
    this.allTimeTotalLoan = 0,
  });

  final String id;
  final String name;
  final String? imageUrl;
  final double currentTotalDebt;
  final double currentTotalLoan;
  final double allTimeTotalDebt;
  final double allTimeTotalLoan;
}
