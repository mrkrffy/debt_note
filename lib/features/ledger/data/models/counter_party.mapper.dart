// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'counter_party.dart';

class CounterPartyMapper extends ClassMapperBase<CounterParty> {
  CounterPartyMapper._();

  static CounterPartyMapper? _instance;
  static CounterPartyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CounterPartyMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CounterParty';

  static String _$id(CounterParty v) => v.id;
  static const Field<CounterParty, String> _f$id = Field('id', _$id);
  static String _$name(CounterParty v) => v.name;
  static const Field<CounterParty, String> _f$name = Field('name', _$name);
  static String? _$imageUrl(CounterParty v) => v.imageUrl;
  static const Field<CounterParty, String> _f$imageUrl =
      Field('imageUrl', _$imageUrl, opt: true);
  static double _$currentTotalDebt(CounterParty v) => v.currentTotalDebt;
  static const Field<CounterParty, double> _f$currentTotalDebt =
      Field('currentTotalDebt', _$currentTotalDebt, opt: true, def: 0);
  static double _$currentTotalLoan(CounterParty v) => v.currentTotalLoan;
  static const Field<CounterParty, double> _f$currentTotalLoan =
      Field('currentTotalLoan', _$currentTotalLoan, opt: true, def: 0);
  static double _$allTimeTotalDebt(CounterParty v) => v.allTimeTotalDebt;
  static const Field<CounterParty, double> _f$allTimeTotalDebt =
      Field('allTimeTotalDebt', _$allTimeTotalDebt, opt: true, def: 0);
  static double _$allTimeTotalLoan(CounterParty v) => v.allTimeTotalLoan;
  static const Field<CounterParty, double> _f$allTimeTotalLoan =
      Field('allTimeTotalLoan', _$allTimeTotalLoan, opt: true, def: 0);

  @override
  final Map<Symbol, Field<CounterParty, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #imageUrl: _f$imageUrl,
    #currentTotalDebt: _f$currentTotalDebt,
    #currentTotalLoan: _f$currentTotalLoan,
    #allTimeTotalDebt: _f$allTimeTotalDebt,
    #allTimeTotalLoan: _f$allTimeTotalLoan,
  };

  static CounterParty _instantiate(DecodingData data) {
    return CounterParty(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        imageUrl: data.dec(_f$imageUrl),
        currentTotalDebt: data.dec(_f$currentTotalDebt),
        currentTotalLoan: data.dec(_f$currentTotalLoan),
        allTimeTotalDebt: data.dec(_f$allTimeTotalDebt),
        allTimeTotalLoan: data.dec(_f$allTimeTotalLoan));
  }

  @override
  final Function instantiate = _instantiate;

  static CounterParty fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CounterParty>(map);
  }

  static CounterParty fromJson(String json) {
    return ensureInitialized().decodeJson<CounterParty>(json);
  }
}

mixin CounterPartyMappable {
  String toJson() {
    return CounterPartyMapper.ensureInitialized()
        .encodeJson<CounterParty>(this as CounterParty);
  }

  Map<String, dynamic> toMap() {
    return CounterPartyMapper.ensureInitialized()
        .encodeMap<CounterParty>(this as CounterParty);
  }

  CounterPartyCopyWith<CounterParty, CounterParty, CounterParty> get copyWith =>
      _CounterPartyCopyWithImpl(this as CounterParty, $identity, $identity);
  @override
  String toString() {
    return CounterPartyMapper.ensureInitialized()
        .stringifyValue(this as CounterParty);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CounterPartyMapper.ensureInitialized()
                .isValueEqual(this as CounterParty, other));
  }

  @override
  int get hashCode {
    return CounterPartyMapper.ensureInitialized()
        .hashValue(this as CounterParty);
  }
}

extension CounterPartyValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CounterParty, $Out> {
  CounterPartyCopyWith<$R, CounterParty, $Out> get $asCounterParty =>
      $base.as((v, t, t2) => _CounterPartyCopyWithImpl(v, t, t2));
}

abstract class CounterPartyCopyWith<$R, $In extends CounterParty, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? name,
      String? imageUrl,
      double? currentTotalDebt,
      double? currentTotalLoan,
      double? allTimeTotalDebt,
      double? allTimeTotalLoan});
  CounterPartyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CounterPartyCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CounterParty, $Out>
    implements CounterPartyCopyWith<$R, CounterParty, $Out> {
  _CounterPartyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CounterParty> $mapper =
      CounterPartyMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          Object? imageUrl = $none,
          double? currentTotalDebt,
          double? currentTotalLoan,
          double? allTimeTotalDebt,
          double? allTimeTotalLoan}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (imageUrl != $none) #imageUrl: imageUrl,
        if (currentTotalDebt != null) #currentTotalDebt: currentTotalDebt,
        if (currentTotalLoan != null) #currentTotalLoan: currentTotalLoan,
        if (allTimeTotalDebt != null) #allTimeTotalDebt: allTimeTotalDebt,
        if (allTimeTotalLoan != null) #allTimeTotalLoan: allTimeTotalLoan
      }));
  @override
  CounterParty $make(CopyWithData data) => CounterParty(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      imageUrl: data.get(#imageUrl, or: $value.imageUrl),
      currentTotalDebt:
          data.get(#currentTotalDebt, or: $value.currentTotalDebt),
      currentTotalLoan:
          data.get(#currentTotalLoan, or: $value.currentTotalLoan),
      allTimeTotalDebt:
          data.get(#allTimeTotalDebt, or: $value.allTimeTotalDebt),
      allTimeTotalLoan:
          data.get(#allTimeTotalLoan, or: $value.allTimeTotalLoan));

  @override
  CounterPartyCopyWith<$R2, CounterParty, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CounterPartyCopyWithImpl($value, $cast, t);
}
