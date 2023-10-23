// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ledger.dart';

class LedgerMapper extends ClassMapperBase<Ledger> {
  LedgerMapper._();

  static LedgerMapper? _instance;
  static LedgerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LedgerMapper._());
      LedgerTypeMapper.ensureInitialized();
      CounterPartyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Ledger';

  static String _$id(Ledger v) => v.id;
  static const Field<Ledger, String> _f$id = Field('id', _$id);
  static LedgerType _$type(Ledger v) => v.type;
  static const Field<Ledger, LedgerType> _f$type = Field('type', _$type);
  static double _$amount(Ledger v) => v.amount;
  static const Field<Ledger, double> _f$amount =
      Field('amount', _$amount, opt: true, def: 0);
  static CounterParty _$counterParty(Ledger v) => v.counterParty;
  static const Field<Ledger, CounterParty> _f$counterParty =
      Field('counterParty', _$counterParty);
  static DateTime _$createdDate(Ledger v) => v.createdDate;
  static const Field<Ledger, DateTime> _f$createdDate =
      Field('createdDate', _$createdDate);
  static DateTime? _$updatedDate(Ledger v) => v.updatedDate;
  static const Field<Ledger, DateTime> _f$updatedDate =
      Field('updatedDate', _$updatedDate, opt: true);

  @override
  final Map<Symbol, Field<Ledger, dynamic>> fields = const {
    #id: _f$id,
    #type: _f$type,
    #amount: _f$amount,
    #counterParty: _f$counterParty,
    #createdDate: _f$createdDate,
    #updatedDate: _f$updatedDate,
  };

  static Ledger _instantiate(DecodingData data) {
    return Ledger(
        id: data.dec(_f$id),
        type: data.dec(_f$type),
        amount: data.dec(_f$amount),
        counterParty: data.dec(_f$counterParty),
        createdDate: data.dec(_f$createdDate),
        updatedDate: data.dec(_f$updatedDate));
  }

  @override
  final Function instantiate = _instantiate;

  static Ledger fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Ledger>(map);
  }

  static Ledger fromJson(String json) {
    return ensureInitialized().decodeJson<Ledger>(json);
  }
}

mixin LedgerMappable {
  String toJson() {
    return LedgerMapper.ensureInitialized().encodeJson<Ledger>(this as Ledger);
  }

  Map<String, dynamic> toMap() {
    return LedgerMapper.ensureInitialized().encodeMap<Ledger>(this as Ledger);
  }

  LedgerCopyWith<Ledger, Ledger, Ledger> get copyWith =>
      _LedgerCopyWithImpl(this as Ledger, $identity, $identity);
  @override
  String toString() {
    return LedgerMapper.ensureInitialized().stringifyValue(this as Ledger);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LedgerMapper.ensureInitialized()
                .isValueEqual(this as Ledger, other));
  }

  @override
  int get hashCode {
    return LedgerMapper.ensureInitialized().hashValue(this as Ledger);
  }
}

extension LedgerValueCopy<$R, $Out> on ObjectCopyWith<$R, Ledger, $Out> {
  LedgerCopyWith<$R, Ledger, $Out> get $asLedger =>
      $base.as((v, t, t2) => _LedgerCopyWithImpl(v, t, t2));
}

abstract class LedgerCopyWith<$R, $In extends Ledger, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CounterPartyCopyWith<$R, CounterParty, CounterParty> get counterParty;
  $R call(
      {String? id,
      LedgerType? type,
      double? amount,
      CounterParty? counterParty,
      DateTime? createdDate,
      DateTime? updatedDate});
  LedgerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LedgerCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Ledger, $Out>
    implements LedgerCopyWith<$R, Ledger, $Out> {
  _LedgerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Ledger> $mapper = LedgerMapper.ensureInitialized();
  @override
  CounterPartyCopyWith<$R, CounterParty, CounterParty> get counterParty =>
      $value.counterParty.copyWith.$chain((v) => call(counterParty: v));
  @override
  $R call(
          {String? id,
          LedgerType? type,
          double? amount,
          CounterParty? counterParty,
          DateTime? createdDate,
          Object? updatedDate = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (type != null) #type: type,
        if (amount != null) #amount: amount,
        if (counterParty != null) #counterParty: counterParty,
        if (createdDate != null) #createdDate: createdDate,
        if (updatedDate != $none) #updatedDate: updatedDate
      }));
  @override
  Ledger $make(CopyWithData data) => Ledger(
      id: data.get(#id, or: $value.id),
      type: data.get(#type, or: $value.type),
      amount: data.get(#amount, or: $value.amount),
      counterParty: data.get(#counterParty, or: $value.counterParty),
      createdDate: data.get(#createdDate, or: $value.createdDate),
      updatedDate: data.get(#updatedDate, or: $value.updatedDate));

  @override
  LedgerCopyWith<$R2, Ledger, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LedgerCopyWithImpl($value, $cast, t);
}
