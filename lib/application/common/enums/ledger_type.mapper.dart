// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ledger_type.dart';

class LedgerTypeMapper extends EnumMapper<LedgerType> {
  LedgerTypeMapper._();

  static LedgerTypeMapper? _instance;
  static LedgerTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LedgerTypeMapper._());
    }
    return _instance!;
  }

  static LedgerType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LedgerType decode(dynamic value) {
    switch (value) {
      case 'debt':
        return LedgerType.debt;
      case 'loan':
        return LedgerType.loan;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LedgerType self) {
    switch (self) {
      case LedgerType.debt:
        return 'debt';
      case LedgerType.loan:
        return 'loan';
    }
  }
}

extension LedgerTypeMapperExtension on LedgerType {
  String toValue() {
    LedgerTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LedgerType>(this) as String;
  }
}
