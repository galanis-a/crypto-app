// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Crypto> _$cryptoSerializer = new _$CryptoSerializer();
Serializer<CoinData> _$coinDataSerializer = new _$CoinDataSerializer();
Serializer<CoinInfo> _$coinInfoSerializer = new _$CoinInfoSerializer();

class _$CryptoSerializer implements StructuredSerializer<Crypto> {
  @override
  final Iterable<Type> types = const [Crypto, _$Crypto];
  @override
  final String wireName = 'Crypto';

  @override
  Iterable<Object> serialize(Serializers serializers, Crypto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CoinData)])),
    ];

    return result;
  }

  @override
  Crypto deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CryptoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CoinData)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$CoinDataSerializer implements StructuredSerializer<CoinData> {
  @override
  final Iterable<Type> types = const [CoinData, _$CoinData];
  @override
  final String wireName = 'CoinData';

  @override
  Iterable<Object> serialize(Serializers serializers, CoinData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'CoinInfo',
      serializers.serialize(object.coinInfo,
          specifiedType: const FullType(CoinInfo)),
    ];

    return result;
  }

  @override
  CoinData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoinDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'CoinInfo':
          result.coinInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(CoinInfo)) as CoinInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$CoinInfoSerializer implements StructuredSerializer<CoinInfo> {
  @override
  final Iterable<Type> types = const [CoinInfo, _$CoinInfo];
  @override
  final String wireName = 'CoinInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, CoinInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'FullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'ImageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'Algorithm',
      serializers.serialize(object.algorithm,
          specifiedType: const FullType(String)),
      'ProofType',
      serializers.serialize(object.proofType,
          specifiedType: const FullType(String)),
      'NetHashesPerSecond',
      serializers.serialize(object.netHashesPerSecond,
          specifiedType: const FullType(double)),
      'BlockNumber',
      serializers.serialize(object.blockNumber,
          specifiedType: const FullType(double)),
      'BlockTime',
      serializers.serialize(object.blockTime,
          specifiedType: const FullType(double)),
      'BlockReward',
      serializers.serialize(object.blockReward,
          specifiedType: const FullType(double)),
      'Type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CoinInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoinInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'FullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ImageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Algorithm':
          result.algorithm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ProofType':
          result.proofType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'NetHashesPerSecond':
          result.netHashesPerSecond = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'BlockNumber':
          result.blockNumber = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'BlockTime':
          result.blockTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'BlockReward':
          result.blockReward = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Crypto extends Crypto {
  @override
  final BuiltList<CoinData> data;

  factory _$Crypto([void Function(CryptoBuilder) updates]) =>
      (new CryptoBuilder()..update(updates)).build();

  _$Crypto._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Crypto', 'data');
    }
  }

  @override
  Crypto rebuild(void Function(CryptoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CryptoBuilder toBuilder() => new CryptoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Crypto && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Crypto')..add('data', data))
        .toString();
  }
}

class CryptoBuilder implements Builder<Crypto, CryptoBuilder> {
  _$Crypto _$v;

  ListBuilder<CoinData> _data;
  ListBuilder<CoinData> get data =>
      _$this._data ??= new ListBuilder<CoinData>();
  set data(ListBuilder<CoinData> data) => _$this._data = data;

  CryptoBuilder();

  CryptoBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Crypto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Crypto;
  }

  @override
  void update(void Function(CryptoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Crypto build() {
    _$Crypto _$result;
    try {
      _$result = _$v ?? new _$Crypto._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Crypto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CoinData extends CoinData {
  @override
  final CoinInfo coinInfo;

  factory _$CoinData([void Function(CoinDataBuilder) updates]) =>
      (new CoinDataBuilder()..update(updates)).build();

  _$CoinData._({this.coinInfo}) : super._() {
    if (coinInfo == null) {
      throw new BuiltValueNullFieldError('CoinData', 'coinInfo');
    }
  }

  @override
  CoinData rebuild(void Function(CoinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoinDataBuilder toBuilder() => new CoinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoinData && coinInfo == other.coinInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, coinInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoinData')..add('coinInfo', coinInfo))
        .toString();
  }
}

class CoinDataBuilder implements Builder<CoinData, CoinDataBuilder> {
  _$CoinData _$v;

  CoinInfoBuilder _coinInfo;
  CoinInfoBuilder get coinInfo => _$this._coinInfo ??= new CoinInfoBuilder();
  set coinInfo(CoinInfoBuilder coinInfo) => _$this._coinInfo = coinInfo;

  CoinDataBuilder();

  CoinDataBuilder get _$this {
    if (_$v != null) {
      _coinInfo = _$v.coinInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoinData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CoinData;
  }

  @override
  void update(void Function(CoinDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoinData build() {
    _$CoinData _$result;
    try {
      _$result = _$v ?? new _$CoinData._(coinInfo: coinInfo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coinInfo';
        coinInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CoinData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CoinInfo extends CoinInfo {
  @override
  final String name;
  @override
  final String fullName;
  @override
  final String imageUrl;
  @override
  final String algorithm;
  @override
  final String proofType;
  @override
  final double netHashesPerSecond;
  @override
  final double blockNumber;
  @override
  final double blockTime;
  @override
  final double blockReward;
  @override
  final int type;

  factory _$CoinInfo([void Function(CoinInfoBuilder) updates]) =>
      (new CoinInfoBuilder()..update(updates)).build();

  _$CoinInfo._(
      {this.name,
      this.fullName,
      this.imageUrl,
      this.algorithm,
      this.proofType,
      this.netHashesPerSecond,
      this.blockNumber,
      this.blockTime,
      this.blockReward,
      this.type})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'name');
    }
    if (fullName == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'fullName');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'imageUrl');
    }
    if (algorithm == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'algorithm');
    }
    if (proofType == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'proofType');
    }
    if (netHashesPerSecond == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'netHashesPerSecond');
    }
    if (blockNumber == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'blockNumber');
    }
    if (blockTime == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'blockTime');
    }
    if (blockReward == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'blockReward');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('CoinInfo', 'type');
    }
  }

  @override
  CoinInfo rebuild(void Function(CoinInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoinInfoBuilder toBuilder() => new CoinInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoinInfo &&
        name == other.name &&
        fullName == other.fullName &&
        imageUrl == other.imageUrl &&
        algorithm == other.algorithm &&
        proofType == other.proofType &&
        netHashesPerSecond == other.netHashesPerSecond &&
        blockNumber == other.blockNumber &&
        blockTime == other.blockTime &&
        blockReward == other.blockReward &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, name.hashCode),
                                        fullName.hashCode),
                                    imageUrl.hashCode),
                                algorithm.hashCode),
                            proofType.hashCode),
                        netHashesPerSecond.hashCode),
                    blockNumber.hashCode),
                blockTime.hashCode),
            blockReward.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoinInfo')
          ..add('name', name)
          ..add('fullName', fullName)
          ..add('imageUrl', imageUrl)
          ..add('algorithm', algorithm)
          ..add('proofType', proofType)
          ..add('netHashesPerSecond', netHashesPerSecond)
          ..add('blockNumber', blockNumber)
          ..add('blockTime', blockTime)
          ..add('blockReward', blockReward)
          ..add('type', type))
        .toString();
  }
}

class CoinInfoBuilder implements Builder<CoinInfo, CoinInfoBuilder> {
  _$CoinInfo _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _algorithm;
  String get algorithm => _$this._algorithm;
  set algorithm(String algorithm) => _$this._algorithm = algorithm;

  String _proofType;
  String get proofType => _$this._proofType;
  set proofType(String proofType) => _$this._proofType = proofType;

  double _netHashesPerSecond;
  double get netHashesPerSecond => _$this._netHashesPerSecond;
  set netHashesPerSecond(double netHashesPerSecond) =>
      _$this._netHashesPerSecond = netHashesPerSecond;

  double _blockNumber;
  double get blockNumber => _$this._blockNumber;
  set blockNumber(double blockNumber) => _$this._blockNumber = blockNumber;

  double _blockTime;
  double get blockTime => _$this._blockTime;
  set blockTime(double blockTime) => _$this._blockTime = blockTime;

  double _blockReward;
  double get blockReward => _$this._blockReward;
  set blockReward(double blockReward) => _$this._blockReward = blockReward;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  CoinInfoBuilder();

  CoinInfoBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _fullName = _$v.fullName;
      _imageUrl = _$v.imageUrl;
      _algorithm = _$v.algorithm;
      _proofType = _$v.proofType;
      _netHashesPerSecond = _$v.netHashesPerSecond;
      _blockNumber = _$v.blockNumber;
      _blockTime = _$v.blockTime;
      _blockReward = _$v.blockReward;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoinInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CoinInfo;
  }

  @override
  void update(void Function(CoinInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoinInfo build() {
    final _$result = _$v ??
        new _$CoinInfo._(
            name: name,
            fullName: fullName,
            imageUrl: imageUrl,
            algorithm: algorithm,
            proofType: proofType,
            netHashesPerSecond: netHashesPerSecond,
            blockNumber: blockNumber,
            blockTime: blockTime,
            blockReward: blockReward,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
