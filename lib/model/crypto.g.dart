// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Crypto> _$cryptoSerializer = new _$CryptoSerializer();
Serializer<CoinData> _$coinDataSerializer = new _$CoinDataSerializer();
Serializer<CoinInfo> _$coinInfoSerializer = new _$CoinInfoSerializer();
Serializer<Currency> _$currencySerializer = new _$CurrencySerializer();

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
      'DISPLAY',
      serializers.serialize(object.display,
          specifiedType: const FullType(Display)),
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
        case 'DISPLAY':
          result.display.replace(serializers.deserialize(value,
              specifiedType: const FullType(Display)) as Display);
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

class _$CurrencySerializer implements StructuredSerializer<Currency> {
  @override
  final Iterable<Type> types = const [Currency, _$Currency];
  @override
  final String wireName = 'Currency';

  @override
  Iterable<Object> serialize(Serializers serializers, Currency object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'FROMSYMBOL',
      serializers.serialize(object.fromSymbol,
          specifiedType: const FullType(String)),
      'TOSYMBOL',
      serializers.serialize(object.toSymbol,
          specifiedType: const FullType(String)),
      'MARKET',
      serializers.serialize(object.market,
          specifiedType: const FullType(String)),
      'PRICE',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
      'LASTUPDATE',
      serializers.serialize(object.lastUpdate,
          specifiedType: const FullType(String)),
      'LASTVOLUME',
      serializers.serialize(object.lastVolume,
          specifiedType: const FullType(String)),
      'LASTVOLUMETO',
      serializers.serialize(object.lastVolumeTo,
          specifiedType: const FullType(String)),
      'LASTTRADEID',
      serializers.serialize(object.lastTradeId,
          specifiedType: const FullType(String)),
      'VOLUMEDAY',
      serializers.serialize(object.volumeDay,
          specifiedType: const FullType(String)),
      'VOLUMEDAYTO',
      serializers.serialize(object.volumeAuto,
          specifiedType: const FullType(String)),
      'VOLUME24HOUR',
      serializers.serialize(object.volume24Hour,
          specifiedType: const FullType(String)),
      'VOLUME24HOURTO',
      serializers.serialize(object.volume24HoutTo,
          specifiedType: const FullType(String)),
      'OPENDAY',
      serializers.serialize(object.openDat,
          specifiedType: const FullType(String)),
      'HIGHDAY',
      serializers.serialize(object.highDay,
          specifiedType: const FullType(String)),
      'LOWDAY',
      serializers.serialize(object.lowDay,
          specifiedType: const FullType(String)),
      'OPEN24HOUR',
      serializers.serialize(object.open24Hour,
          specifiedType: const FullType(String)),
      'HIGH24HOUR',
      serializers.serialize(object.high24Hour,
          specifiedType: const FullType(String)),
      'LOW24HOUR',
      serializers.serialize(object.low24Hour,
          specifiedType: const FullType(String)),
      'LASTMARKET',
      serializers.serialize(object.lastMarket,
          specifiedType: const FullType(String)),
      'VOLUMEHOUR',
      serializers.serialize(object.volumeHout,
          specifiedType: const FullType(String)),
      'VOLUMEHOURTO',
      serializers.serialize(object.volumeHourTo,
          specifiedType: const FullType(String)),
      'OPENHOUR',
      serializers.serialize(object.openHour,
          specifiedType: const FullType(String)),
      'HIGHHOUR',
      serializers.serialize(object.highHour,
          specifiedType: const FullType(String)),
      'LOWHOUR',
      serializers.serialize(object.lowHour,
          specifiedType: const FullType(String)),
      'TOPTIERVOLUME24HOUR',
      serializers.serialize(object.topTierVolume24Hout,
          specifiedType: const FullType(String)),
      'TOPTIERVOLUME24HOURTO',
      serializers.serialize(object.topTierVolume24HourTo,
          specifiedType: const FullType(String)),
      'CHANGE24HOUR',
      serializers.serialize(object.change24Hour,
          specifiedType: const FullType(String)),
      'CHANGEPCT24HOUR',
      serializers.serialize(object.changePct24Hout,
          specifiedType: const FullType(String)),
      'CHANGEDAY',
      serializers.serialize(object.changeDay,
          specifiedType: const FullType(String)),
      'CHANGEPCTDAY',
      serializers.serialize(object.changePtcDay,
          specifiedType: const FullType(String)),
      'CHANGEHOUR',
      serializers.serialize(object.changeHout,
          specifiedType: const FullType(String)),
      'CHANGEPCTHOUR',
      serializers.serialize(object.changePtcHour,
          specifiedType: const FullType(String)),
      'SUPPLY',
      serializers.serialize(object.supply,
          specifiedType: const FullType(String)),
      'MKTCAP',
      serializers.serialize(object.mktcap,
          specifiedType: const FullType(String)),
      'TOTALVOLUME24H',
      serializers.serialize(object.totalVolume24H,
          specifiedType: const FullType(String)),
      'TOTALVOLUME24HTO',
      serializers.serialize(object.totalVolume24HTo,
          specifiedType: const FullType(String)),
      'TOTALTOPTIERVOLUME24H',
      serializers.serialize(object.totalToTierVolume24H,
          specifiedType: const FullType(String)),
      'TOTALTOPTIERVOLUME24HTO',
      serializers.serialize(object.totalToTierVolume24HTo,
          specifiedType: const FullType(String)),
      'IMAGEURL',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'CONVERSIONTYPE',
      serializers.serialize(object.conversionType,
          specifiedType: const FullType(String)),
      'CONVERSIONSYMBOL',
      serializers.serialize(object.conversionSymbol,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Currency deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'FROMSYMBOL':
          result.fromSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TOSYMBOL':
          result.toSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'MARKET':
          result.market = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PRICE':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LASTUPDATE':
          result.lastUpdate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LASTVOLUME':
          result.lastVolume = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LASTVOLUMETO':
          result.lastVolumeTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LASTTRADEID':
          result.lastTradeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VOLUMEDAY':
          result.volumeDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VOLUMEDAYTO':
          result.volumeAuto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VOLUME24HOUR':
          result.volume24Hour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VOLUME24HOURTO':
          result.volume24HoutTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'OPENDAY':
          result.openDat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'HIGHDAY':
          result.highDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LOWDAY':
          result.lowDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'OPEN24HOUR':
          result.open24Hour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'HIGH24HOUR':
          result.high24Hour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LOW24HOUR':
          result.low24Hour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LASTMARKET':
          result.lastMarket = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VOLUMEHOUR':
          result.volumeHout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'VOLUMEHOURTO':
          result.volumeHourTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'OPENHOUR':
          result.openHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'HIGHHOUR':
          result.highHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LOWHOUR':
          result.lowHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TOPTIERVOLUME24HOUR':
          result.topTierVolume24Hout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TOPTIERVOLUME24HOURTO':
          result.topTierVolume24HourTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CHANGE24HOUR':
          result.change24Hour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CHANGEPCT24HOUR':
          result.changePct24Hout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CHANGEDAY':
          result.changeDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CHANGEPCTDAY':
          result.changePtcDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CHANGEHOUR':
          result.changeHout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CHANGEPCTHOUR':
          result.changePtcHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'SUPPLY':
          result.supply = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'MKTCAP':
          result.mktcap = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TOTALVOLUME24H':
          result.totalVolume24H = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TOTALVOLUME24HTO':
          result.totalVolume24HTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TOTALTOPTIERVOLUME24H':
          result.totalToTierVolume24H = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TOTALTOPTIERVOLUME24HTO':
          result.totalToTierVolume24HTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'IMAGEURL':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CONVERSIONTYPE':
          result.conversionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CONVERSIONSYMBOL':
          result.conversionSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
  @override
  final Display display;

  factory _$CoinData([void Function(CoinDataBuilder) updates]) =>
      (new CoinDataBuilder()..update(updates)).build();

  _$CoinData._({this.coinInfo, this.display}) : super._() {
    if (coinInfo == null) {
      throw new BuiltValueNullFieldError('CoinData', 'coinInfo');
    }
    if (display == null) {
      throw new BuiltValueNullFieldError('CoinData', 'display');
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
    return other is CoinData &&
        coinInfo == other.coinInfo &&
        display == other.display;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, coinInfo.hashCode), display.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoinData')
          ..add('coinInfo', coinInfo)
          ..add('display', display))
        .toString();
  }
}

class CoinDataBuilder implements Builder<CoinData, CoinDataBuilder> {
  _$CoinData _$v;

  CoinInfoBuilder _coinInfo;
  CoinInfoBuilder get coinInfo => _$this._coinInfo ??= new CoinInfoBuilder();
  set coinInfo(CoinInfoBuilder coinInfo) => _$this._coinInfo = coinInfo;

  DisplayBuilder _display;
  DisplayBuilder get display => _$this._display ??= new DisplayBuilder();
  set display(DisplayBuilder display) => _$this._display = display;

  CoinDataBuilder();

  CoinDataBuilder get _$this {
    if (_$v != null) {
      _coinInfo = _$v.coinInfo?.toBuilder();
      _display = _$v.display?.toBuilder();
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
      _$result = _$v ??
          new _$CoinData._(
              coinInfo: coinInfo.build(), display: display.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coinInfo';
        coinInfo.build();
        _$failedField = 'display';
        display.build();
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

class _$Display extends Display {
  @override
  final Currency currency;

  factory _$Display([void Function(DisplayBuilder) updates]) =>
      (new DisplayBuilder()..update(updates)).build();

  _$Display._({this.currency}) : super._() {
    if (currency == null) {
      throw new BuiltValueNullFieldError('Display', 'currency');
    }
  }

  @override
  Display rebuild(void Function(DisplayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisplayBuilder toBuilder() => new DisplayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Display && currency == other.currency;
  }

  @override
  int get hashCode {
    return $jf($jc(0, currency.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Display')..add('currency', currency))
        .toString();
  }
}

class DisplayBuilder implements Builder<Display, DisplayBuilder> {
  _$Display _$v;

  CurrencyBuilder _currency;
  CurrencyBuilder get currency => _$this._currency ??= new CurrencyBuilder();
  set currency(CurrencyBuilder currency) => _$this._currency = currency;

  DisplayBuilder();

  DisplayBuilder get _$this {
    if (_$v != null) {
      _currency = _$v.currency?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Display other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Display;
  }

  @override
  void update(void Function(DisplayBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Display build() {
    _$Display _$result;
    try {
      _$result = _$v ?? new _$Display._(currency: currency.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'currency';
        currency.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Display', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Currency extends Currency {
  @override
  final String fromSymbol;
  @override
  final String toSymbol;
  @override
  final String market;
  @override
  final String price;
  @override
  final String lastUpdate;
  @override
  final String lastVolume;
  @override
  final String lastVolumeTo;
  @override
  final String lastTradeId;
  @override
  final String volumeDay;
  @override
  final String volumeAuto;
  @override
  final String volume24Hour;
  @override
  final String volume24HoutTo;
  @override
  final String openDat;
  @override
  final String highDay;
  @override
  final String lowDay;
  @override
  final String open24Hour;
  @override
  final String high24Hour;
  @override
  final String low24Hour;
  @override
  final String lastMarket;
  @override
  final String volumeHout;
  @override
  final String volumeHourTo;
  @override
  final String openHour;
  @override
  final String highHour;
  @override
  final String lowHour;
  @override
  final String topTierVolume24Hout;
  @override
  final String topTierVolume24HourTo;
  @override
  final String change24Hour;
  @override
  final String changePct24Hout;
  @override
  final String changeDay;
  @override
  final String changePtcDay;
  @override
  final String changeHout;
  @override
  final String changePtcHour;
  @override
  final String supply;
  @override
  final String mktcap;
  @override
  final String totalVolume24H;
  @override
  final String totalVolume24HTo;
  @override
  final String totalToTierVolume24H;
  @override
  final String totalToTierVolume24HTo;
  @override
  final String imageUrl;
  @override
  final String conversionType;
  @override
  final String conversionSymbol;

  factory _$Currency([void Function(CurrencyBuilder) updates]) =>
      (new CurrencyBuilder()..update(updates)).build();

  _$Currency._(
      {this.fromSymbol,
      this.toSymbol,
      this.market,
      this.price,
      this.lastUpdate,
      this.lastVolume,
      this.lastVolumeTo,
      this.lastTradeId,
      this.volumeDay,
      this.volumeAuto,
      this.volume24Hour,
      this.volume24HoutTo,
      this.openDat,
      this.highDay,
      this.lowDay,
      this.open24Hour,
      this.high24Hour,
      this.low24Hour,
      this.lastMarket,
      this.volumeHout,
      this.volumeHourTo,
      this.openHour,
      this.highHour,
      this.lowHour,
      this.topTierVolume24Hout,
      this.topTierVolume24HourTo,
      this.change24Hour,
      this.changePct24Hout,
      this.changeDay,
      this.changePtcDay,
      this.changeHout,
      this.changePtcHour,
      this.supply,
      this.mktcap,
      this.totalVolume24H,
      this.totalVolume24HTo,
      this.totalToTierVolume24H,
      this.totalToTierVolume24HTo,
      this.imageUrl,
      this.conversionType,
      this.conversionSymbol})
      : super._() {
    if (fromSymbol == null) {
      throw new BuiltValueNullFieldError('Currency', 'fromSymbol');
    }
    if (toSymbol == null) {
      throw new BuiltValueNullFieldError('Currency', 'toSymbol');
    }
    if (market == null) {
      throw new BuiltValueNullFieldError('Currency', 'market');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Currency', 'price');
    }
    if (lastUpdate == null) {
      throw new BuiltValueNullFieldError('Currency', 'lastUpdate');
    }
    if (lastVolume == null) {
      throw new BuiltValueNullFieldError('Currency', 'lastVolume');
    }
    if (lastVolumeTo == null) {
      throw new BuiltValueNullFieldError('Currency', 'lastVolumeTo');
    }
    if (lastTradeId == null) {
      throw new BuiltValueNullFieldError('Currency', 'lastTradeId');
    }
    if (volumeDay == null) {
      throw new BuiltValueNullFieldError('Currency', 'volumeDay');
    }
    if (volumeAuto == null) {
      throw new BuiltValueNullFieldError('Currency', 'volumeAuto');
    }
    if (volume24Hour == null) {
      throw new BuiltValueNullFieldError('Currency', 'volume24Hour');
    }
    if (volume24HoutTo == null) {
      throw new BuiltValueNullFieldError('Currency', 'volume24HoutTo');
    }
    if (openDat == null) {
      throw new BuiltValueNullFieldError('Currency', 'openDat');
    }
    if (highDay == null) {
      throw new BuiltValueNullFieldError('Currency', 'highDay');
    }
    if (lowDay == null) {
      throw new BuiltValueNullFieldError('Currency', 'lowDay');
    }
    if (open24Hour == null) {
      throw new BuiltValueNullFieldError('Currency', 'open24Hour');
    }
    if (high24Hour == null) {
      throw new BuiltValueNullFieldError('Currency', 'high24Hour');
    }
    if (low24Hour == null) {
      throw new BuiltValueNullFieldError('Currency', 'low24Hour');
    }
    if (lastMarket == null) {
      throw new BuiltValueNullFieldError('Currency', 'lastMarket');
    }
    if (volumeHout == null) {
      throw new BuiltValueNullFieldError('Currency', 'volumeHout');
    }
    if (volumeHourTo == null) {
      throw new BuiltValueNullFieldError('Currency', 'volumeHourTo');
    }
    if (openHour == null) {
      throw new BuiltValueNullFieldError('Currency', 'openHour');
    }
    if (highHour == null) {
      throw new BuiltValueNullFieldError('Currency', 'highHour');
    }
    if (lowHour == null) {
      throw new BuiltValueNullFieldError('Currency', 'lowHour');
    }
    if (topTierVolume24Hout == null) {
      throw new BuiltValueNullFieldError('Currency', 'topTierVolume24Hout');
    }
    if (topTierVolume24HourTo == null) {
      throw new BuiltValueNullFieldError('Currency', 'topTierVolume24HourTo');
    }
    if (change24Hour == null) {
      throw new BuiltValueNullFieldError('Currency', 'change24Hour');
    }
    if (changePct24Hout == null) {
      throw new BuiltValueNullFieldError('Currency', 'changePct24Hout');
    }
    if (changeDay == null) {
      throw new BuiltValueNullFieldError('Currency', 'changeDay');
    }
    if (changePtcDay == null) {
      throw new BuiltValueNullFieldError('Currency', 'changePtcDay');
    }
    if (changeHout == null) {
      throw new BuiltValueNullFieldError('Currency', 'changeHout');
    }
    if (changePtcHour == null) {
      throw new BuiltValueNullFieldError('Currency', 'changePtcHour');
    }
    if (supply == null) {
      throw new BuiltValueNullFieldError('Currency', 'supply');
    }
    if (mktcap == null) {
      throw new BuiltValueNullFieldError('Currency', 'mktcap');
    }
    if (totalVolume24H == null) {
      throw new BuiltValueNullFieldError('Currency', 'totalVolume24H');
    }
    if (totalVolume24HTo == null) {
      throw new BuiltValueNullFieldError('Currency', 'totalVolume24HTo');
    }
    if (totalToTierVolume24H == null) {
      throw new BuiltValueNullFieldError('Currency', 'totalToTierVolume24H');
    }
    if (totalToTierVolume24HTo == null) {
      throw new BuiltValueNullFieldError('Currency', 'totalToTierVolume24HTo');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Currency', 'imageUrl');
    }
    if (conversionType == null) {
      throw new BuiltValueNullFieldError('Currency', 'conversionType');
    }
    if (conversionSymbol == null) {
      throw new BuiltValueNullFieldError('Currency', 'conversionSymbol');
    }
  }

  @override
  Currency rebuild(void Function(CurrencyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyBuilder toBuilder() => new CurrencyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Currency &&
        fromSymbol == other.fromSymbol &&
        toSymbol == other.toSymbol &&
        market == other.market &&
        price == other.price &&
        lastUpdate == other.lastUpdate &&
        lastVolume == other.lastVolume &&
        lastVolumeTo == other.lastVolumeTo &&
        lastTradeId == other.lastTradeId &&
        volumeDay == other.volumeDay &&
        volumeAuto == other.volumeAuto &&
        volume24Hour == other.volume24Hour &&
        volume24HoutTo == other.volume24HoutTo &&
        openDat == other.openDat &&
        highDay == other.highDay &&
        lowDay == other.lowDay &&
        open24Hour == other.open24Hour &&
        high24Hour == other.high24Hour &&
        low24Hour == other.low24Hour &&
        lastMarket == other.lastMarket &&
        volumeHout == other.volumeHout &&
        volumeHourTo == other.volumeHourTo &&
        openHour == other.openHour &&
        highHour == other.highHour &&
        lowHour == other.lowHour &&
        topTierVolume24Hout == other.topTierVolume24Hout &&
        topTierVolume24HourTo == other.topTierVolume24HourTo &&
        change24Hour == other.change24Hour &&
        changePct24Hout == other.changePct24Hout &&
        changeDay == other.changeDay &&
        changePtcDay == other.changePtcDay &&
        changeHout == other.changeHout &&
        changePtcHour == other.changePtcHour &&
        supply == other.supply &&
        mktcap == other.mktcap &&
        totalVolume24H == other.totalVolume24H &&
        totalVolume24HTo == other.totalVolume24HTo &&
        totalToTierVolume24H == other.totalToTierVolume24H &&
        totalToTierVolume24HTo == other.totalToTierVolume24HTo &&
        imageUrl == other.imageUrl &&
        conversionType == other.conversionType &&
        conversionSymbol == other.conversionSymbol;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, fromSymbol.hashCode), toSymbol.hashCode), market.hashCode), price.hashCode), lastUpdate.hashCode), lastVolume.hashCode), lastVolumeTo.hashCode), lastTradeId.hashCode), volumeDay.hashCode), volumeAuto.hashCode), volume24Hour.hashCode), volume24HoutTo.hashCode), openDat.hashCode), highDay.hashCode), lowDay.hashCode), open24Hour.hashCode), high24Hour.hashCode), low24Hour.hashCode), lastMarket.hashCode), volumeHout.hashCode), volumeHourTo.hashCode), openHour.hashCode),
                                                                                highHour.hashCode),
                                                                            lowHour.hashCode),
                                                                        topTierVolume24Hout.hashCode),
                                                                    topTierVolume24HourTo.hashCode),
                                                                change24Hour.hashCode),
                                                            changePct24Hout.hashCode),
                                                        changeDay.hashCode),
                                                    changePtcDay.hashCode),
                                                changeHout.hashCode),
                                            changePtcHour.hashCode),
                                        supply.hashCode),
                                    mktcap.hashCode),
                                totalVolume24H.hashCode),
                            totalVolume24HTo.hashCode),
                        totalToTierVolume24H.hashCode),
                    totalToTierVolume24HTo.hashCode),
                imageUrl.hashCode),
            conversionType.hashCode),
        conversionSymbol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Currency')
          ..add('fromSymbol', fromSymbol)
          ..add('toSymbol', toSymbol)
          ..add('market', market)
          ..add('price', price)
          ..add('lastUpdate', lastUpdate)
          ..add('lastVolume', lastVolume)
          ..add('lastVolumeTo', lastVolumeTo)
          ..add('lastTradeId', lastTradeId)
          ..add('volumeDay', volumeDay)
          ..add('volumeAuto', volumeAuto)
          ..add('volume24Hour', volume24Hour)
          ..add('volume24HoutTo', volume24HoutTo)
          ..add('openDat', openDat)
          ..add('highDay', highDay)
          ..add('lowDay', lowDay)
          ..add('open24Hour', open24Hour)
          ..add('high24Hour', high24Hour)
          ..add('low24Hour', low24Hour)
          ..add('lastMarket', lastMarket)
          ..add('volumeHout', volumeHout)
          ..add('volumeHourTo', volumeHourTo)
          ..add('openHour', openHour)
          ..add('highHour', highHour)
          ..add('lowHour', lowHour)
          ..add('topTierVolume24Hout', topTierVolume24Hout)
          ..add('topTierVolume24HourTo', topTierVolume24HourTo)
          ..add('change24Hour', change24Hour)
          ..add('changePct24Hout', changePct24Hout)
          ..add('changeDay', changeDay)
          ..add('changePtcDay', changePtcDay)
          ..add('changeHout', changeHout)
          ..add('changePtcHour', changePtcHour)
          ..add('supply', supply)
          ..add('mktcap', mktcap)
          ..add('totalVolume24H', totalVolume24H)
          ..add('totalVolume24HTo', totalVolume24HTo)
          ..add('totalToTierVolume24H', totalToTierVolume24H)
          ..add('totalToTierVolume24HTo', totalToTierVolume24HTo)
          ..add('imageUrl', imageUrl)
          ..add('conversionType', conversionType)
          ..add('conversionSymbol', conversionSymbol))
        .toString();
  }
}

class CurrencyBuilder implements Builder<Currency, CurrencyBuilder> {
  _$Currency _$v;

  String _fromSymbol;
  String get fromSymbol => _$this._fromSymbol;
  set fromSymbol(String fromSymbol) => _$this._fromSymbol = fromSymbol;

  String _toSymbol;
  String get toSymbol => _$this._toSymbol;
  set toSymbol(String toSymbol) => _$this._toSymbol = toSymbol;

  String _market;
  String get market => _$this._market;
  set market(String market) => _$this._market = market;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _lastUpdate;
  String get lastUpdate => _$this._lastUpdate;
  set lastUpdate(String lastUpdate) => _$this._lastUpdate = lastUpdate;

  String _lastVolume;
  String get lastVolume => _$this._lastVolume;
  set lastVolume(String lastVolume) => _$this._lastVolume = lastVolume;

  String _lastVolumeTo;
  String get lastVolumeTo => _$this._lastVolumeTo;
  set lastVolumeTo(String lastVolumeTo) => _$this._lastVolumeTo = lastVolumeTo;

  String _lastTradeId;
  String get lastTradeId => _$this._lastTradeId;
  set lastTradeId(String lastTradeId) => _$this._lastTradeId = lastTradeId;

  String _volumeDay;
  String get volumeDay => _$this._volumeDay;
  set volumeDay(String volumeDay) => _$this._volumeDay = volumeDay;

  String _volumeAuto;
  String get volumeAuto => _$this._volumeAuto;
  set volumeAuto(String volumeAuto) => _$this._volumeAuto = volumeAuto;

  String _volume24Hour;
  String get volume24Hour => _$this._volume24Hour;
  set volume24Hour(String volume24Hour) => _$this._volume24Hour = volume24Hour;

  String _volume24HoutTo;
  String get volume24HoutTo => _$this._volume24HoutTo;
  set volume24HoutTo(String volume24HoutTo) =>
      _$this._volume24HoutTo = volume24HoutTo;

  String _openDat;
  String get openDat => _$this._openDat;
  set openDat(String openDat) => _$this._openDat = openDat;

  String _highDay;
  String get highDay => _$this._highDay;
  set highDay(String highDay) => _$this._highDay = highDay;

  String _lowDay;
  String get lowDay => _$this._lowDay;
  set lowDay(String lowDay) => _$this._lowDay = lowDay;

  String _open24Hour;
  String get open24Hour => _$this._open24Hour;
  set open24Hour(String open24Hour) => _$this._open24Hour = open24Hour;

  String _high24Hour;
  String get high24Hour => _$this._high24Hour;
  set high24Hour(String high24Hour) => _$this._high24Hour = high24Hour;

  String _low24Hour;
  String get low24Hour => _$this._low24Hour;
  set low24Hour(String low24Hour) => _$this._low24Hour = low24Hour;

  String _lastMarket;
  String get lastMarket => _$this._lastMarket;
  set lastMarket(String lastMarket) => _$this._lastMarket = lastMarket;

  String _volumeHout;
  String get volumeHout => _$this._volumeHout;
  set volumeHout(String volumeHout) => _$this._volumeHout = volumeHout;

  String _volumeHourTo;
  String get volumeHourTo => _$this._volumeHourTo;
  set volumeHourTo(String volumeHourTo) => _$this._volumeHourTo = volumeHourTo;

  String _openHour;
  String get openHour => _$this._openHour;
  set openHour(String openHour) => _$this._openHour = openHour;

  String _highHour;
  String get highHour => _$this._highHour;
  set highHour(String highHour) => _$this._highHour = highHour;

  String _lowHour;
  String get lowHour => _$this._lowHour;
  set lowHour(String lowHour) => _$this._lowHour = lowHour;

  String _topTierVolume24Hout;
  String get topTierVolume24Hout => _$this._topTierVolume24Hout;
  set topTierVolume24Hout(String topTierVolume24Hout) =>
      _$this._topTierVolume24Hout = topTierVolume24Hout;

  String _topTierVolume24HourTo;
  String get topTierVolume24HourTo => _$this._topTierVolume24HourTo;
  set topTierVolume24HourTo(String topTierVolume24HourTo) =>
      _$this._topTierVolume24HourTo = topTierVolume24HourTo;

  String _change24Hour;
  String get change24Hour => _$this._change24Hour;
  set change24Hour(String change24Hour) => _$this._change24Hour = change24Hour;

  String _changePct24Hout;
  String get changePct24Hout => _$this._changePct24Hout;
  set changePct24Hout(String changePct24Hout) =>
      _$this._changePct24Hout = changePct24Hout;

  String _changeDay;
  String get changeDay => _$this._changeDay;
  set changeDay(String changeDay) => _$this._changeDay = changeDay;

  String _changePtcDay;
  String get changePtcDay => _$this._changePtcDay;
  set changePtcDay(String changePtcDay) => _$this._changePtcDay = changePtcDay;

  String _changeHout;
  String get changeHout => _$this._changeHout;
  set changeHout(String changeHout) => _$this._changeHout = changeHout;

  String _changePtcHour;
  String get changePtcHour => _$this._changePtcHour;
  set changePtcHour(String changePtcHour) =>
      _$this._changePtcHour = changePtcHour;

  String _supply;
  String get supply => _$this._supply;
  set supply(String supply) => _$this._supply = supply;

  String _mktcap;
  String get mktcap => _$this._mktcap;
  set mktcap(String mktcap) => _$this._mktcap = mktcap;

  String _totalVolume24H;
  String get totalVolume24H => _$this._totalVolume24H;
  set totalVolume24H(String totalVolume24H) =>
      _$this._totalVolume24H = totalVolume24H;

  String _totalVolume24HTo;
  String get totalVolume24HTo => _$this._totalVolume24HTo;
  set totalVolume24HTo(String totalVolume24HTo) =>
      _$this._totalVolume24HTo = totalVolume24HTo;

  String _totalToTierVolume24H;
  String get totalToTierVolume24H => _$this._totalToTierVolume24H;
  set totalToTierVolume24H(String totalToTierVolume24H) =>
      _$this._totalToTierVolume24H = totalToTierVolume24H;

  String _totalToTierVolume24HTo;
  String get totalToTierVolume24HTo => _$this._totalToTierVolume24HTo;
  set totalToTierVolume24HTo(String totalToTierVolume24HTo) =>
      _$this._totalToTierVolume24HTo = totalToTierVolume24HTo;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _conversionType;
  String get conversionType => _$this._conversionType;
  set conversionType(String conversionType) =>
      _$this._conversionType = conversionType;

  String _conversionSymbol;
  String get conversionSymbol => _$this._conversionSymbol;
  set conversionSymbol(String conversionSymbol) =>
      _$this._conversionSymbol = conversionSymbol;

  CurrencyBuilder();

  CurrencyBuilder get _$this {
    if (_$v != null) {
      _fromSymbol = _$v.fromSymbol;
      _toSymbol = _$v.toSymbol;
      _market = _$v.market;
      _price = _$v.price;
      _lastUpdate = _$v.lastUpdate;
      _lastVolume = _$v.lastVolume;
      _lastVolumeTo = _$v.lastVolumeTo;
      _lastTradeId = _$v.lastTradeId;
      _volumeDay = _$v.volumeDay;
      _volumeAuto = _$v.volumeAuto;
      _volume24Hour = _$v.volume24Hour;
      _volume24HoutTo = _$v.volume24HoutTo;
      _openDat = _$v.openDat;
      _highDay = _$v.highDay;
      _lowDay = _$v.lowDay;
      _open24Hour = _$v.open24Hour;
      _high24Hour = _$v.high24Hour;
      _low24Hour = _$v.low24Hour;
      _lastMarket = _$v.lastMarket;
      _volumeHout = _$v.volumeHout;
      _volumeHourTo = _$v.volumeHourTo;
      _openHour = _$v.openHour;
      _highHour = _$v.highHour;
      _lowHour = _$v.lowHour;
      _topTierVolume24Hout = _$v.topTierVolume24Hout;
      _topTierVolume24HourTo = _$v.topTierVolume24HourTo;
      _change24Hour = _$v.change24Hour;
      _changePct24Hout = _$v.changePct24Hout;
      _changeDay = _$v.changeDay;
      _changePtcDay = _$v.changePtcDay;
      _changeHout = _$v.changeHout;
      _changePtcHour = _$v.changePtcHour;
      _supply = _$v.supply;
      _mktcap = _$v.mktcap;
      _totalVolume24H = _$v.totalVolume24H;
      _totalVolume24HTo = _$v.totalVolume24HTo;
      _totalToTierVolume24H = _$v.totalToTierVolume24H;
      _totalToTierVolume24HTo = _$v.totalToTierVolume24HTo;
      _imageUrl = _$v.imageUrl;
      _conversionType = _$v.conversionType;
      _conversionSymbol = _$v.conversionSymbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Currency other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Currency;
  }

  @override
  void update(void Function(CurrencyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Currency build() {
    final _$result = _$v ??
        new _$Currency._(
            fromSymbol: fromSymbol,
            toSymbol: toSymbol,
            market: market,
            price: price,
            lastUpdate: lastUpdate,
            lastVolume: lastVolume,
            lastVolumeTo: lastVolumeTo,
            lastTradeId: lastTradeId,
            volumeDay: volumeDay,
            volumeAuto: volumeAuto,
            volume24Hour: volume24Hour,
            volume24HoutTo: volume24HoutTo,
            openDat: openDat,
            highDay: highDay,
            lowDay: lowDay,
            open24Hour: open24Hour,
            high24Hour: high24Hour,
            low24Hour: low24Hour,
            lastMarket: lastMarket,
            volumeHout: volumeHout,
            volumeHourTo: volumeHourTo,
            openHour: openHour,
            highHour: highHour,
            lowHour: lowHour,
            topTierVolume24Hout: topTierVolume24Hout,
            topTierVolume24HourTo: topTierVolume24HourTo,
            change24Hour: change24Hour,
            changePct24Hout: changePct24Hout,
            changeDay: changeDay,
            changePtcDay: changePtcDay,
            changeHout: changeHout,
            changePtcHour: changePtcHour,
            supply: supply,
            mktcap: mktcap,
            totalVolume24H: totalVolume24H,
            totalVolume24HTo: totalVolume24HTo,
            totalToTierVolume24H: totalToTierVolume24H,
            totalToTierVolume24HTo: totalToTierVolume24HTo,
            imageUrl: imageUrl,
            conversionType: conversionType,
            conversionSymbol: conversionSymbol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
