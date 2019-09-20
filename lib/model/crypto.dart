import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'crypto.g.dart';

abstract class Crypto implements Built<Crypto, CryptoBuilder> {
  @BuiltValueField(wireName: 'Data')
  BuiltList<CoinData> get data;

  Crypto._();

  factory Crypto([updates(CryptoBuilder b)]) = _$Crypto;
  static Serializer<Crypto> get serializer => _$cryptoSerializer;
}

abstract class CoinData implements Built<CoinData, CoinDataBuilder> {
  @BuiltValueField(wireName: 'CoinInfo')
  CoinInfo get coinInfo;

  @BuiltValueField(wireName: 'DISPLAY')
  Display get display;

  CoinData._();

  factory CoinData([updates(CoinDataBuilder b)]) = _$CoinData;
  static Serializer<CoinData> get serializer => _$coinDataSerializer;
}

abstract class CoinInfo implements Built<CoinInfo, CoinInfoBuilder> {
  @BuiltValueField(wireName: 'Name')
  String get name;
  @BuiltValueField(wireName: 'FullName')
  String get fullName;
  @BuiltValueField(wireName: 'ImageUrl')
  String get imageUrl;
  @BuiltValueField(wireName: 'Algorithm')
  String get algorithm;
  @BuiltValueField(wireName: 'ProofType')
  String get proofType;
  @BuiltValueField(wireName: 'NetHashesPerSecond')
  double get netHashesPerSecond;
  @BuiltValueField(wireName: 'BlockNumber')
  double get blockNumber;
  @BuiltValueField(wireName: 'BlockTime')
  double get blockTime;
  @BuiltValueField(wireName: 'BlockReward')
  double get blockReward;
  @BuiltValueField(wireName: 'Type')
  int get type;

  CoinInfo._();

  factory CoinInfo([updates(CoinInfoBuilder b)]) = _$CoinInfo;
  static Serializer<CoinInfo> get serializer => _$coinInfoSerializer;
}

abstract class Display implements Built<Display, DisplayBuilder> {
  Currency get currency;

  Display._();

  factory Display([updates(DisplayBuilder b)]) = _$Display;
  @BuiltValueSerializer(custom: true)
  static Serializer<Display> get serializer => DisplaySerializer();
}

abstract class Currency implements Built<Currency, CurrencyBuilder> {
  @BuiltValueField(wireName: 'FROMSYMBOL')
  String get fromSymbol;
  @BuiltValueField(wireName: 'TOSYMBOL')
  String get toSymbol;
  @BuiltValueField(wireName: 'MARKET')
  String get market;
  @BuiltValueField(wireName: 'PRICE')
  String get price;
  @BuiltValueField(wireName: 'LASTUPDATE')
  String get lastUpdate;
  @BuiltValueField(wireName: 'LASTVOLUME')
  String get lastVolume;
  @BuiltValueField(wireName: 'LASTVOLUMETO')
  String get lastVolumeTo;
  @BuiltValueField(wireName: 'LASTTRADEID')
  String get lastTradeId;
  @BuiltValueField(wireName: 'VOLUMEDAY')
  String get volumeDay;
  @BuiltValueField(wireName: 'VOLUMEDAYTO')
  String get volumeAuto;
  @BuiltValueField(wireName: 'VOLUME24HOUR')
  String get volume24Hour;
  @BuiltValueField(wireName: 'VOLUME24HOURTO')
  String get volume24HoutTo;
  @BuiltValueField(wireName: 'OPENDAY')
  String get openDat;
  @BuiltValueField(wireName: 'HIGHDAY')
  String get highDay;
  @BuiltValueField(wireName: 'LOWDAY')
  String get lowDay;
  @BuiltValueField(wireName: 'OPEN24HOUR')
  String get open24Hour;
  @BuiltValueField(wireName: 'HIGH24HOUR')
  String get high24Hour;
  @BuiltValueField(wireName: 'LOW24HOUR')
  String get low24Hour;
  @BuiltValueField(wireName: 'LASTMARKET')
  String get lastMarket;
  @BuiltValueField(wireName: 'VOLUMEHOUR')
  String get volumeHout;
  @BuiltValueField(wireName: 'VOLUMEHOURTO')
  String get volumeHourTo;
  @BuiltValueField(wireName: 'OPENHOUR')
  String get openHour;
  @BuiltValueField(wireName: 'HIGHHOUR')
  String get highHour;
  @BuiltValueField(wireName: 'LOWHOUR')
  String get lowHour;
  @BuiltValueField(wireName: 'TOPTIERVOLUME24HOUR')
  String get topTierVolume24Hout;
  @BuiltValueField(wireName: 'TOPTIERVOLUME24HOURTO')
  String get topTierVolume24HourTo;
  @BuiltValueField(wireName: 'CHANGE24HOUR')
  String get change24Hour;
  @BuiltValueField(wireName: 'CHANGEPCT24HOUR')
  String get changePct24Hout;
  @BuiltValueField(wireName: 'CHANGEDAY')
  String get changeDay;
  @BuiltValueField(wireName: 'CHANGEPCTDAY')
  String get changePtcDay;
  @BuiltValueField(wireName: 'CHANGEHOUR')
  String get changeHout;
  @BuiltValueField(wireName: 'CHANGEPCTHOUR')
  String get changePtcHour;
  @BuiltValueField(wireName: 'SUPPLY')
  String get supply;
  @BuiltValueField(wireName: 'MKTCAP')
  String get mktcap;
  @BuiltValueField(wireName: 'TOTALVOLUME24H')
  String get totalVolume24H;
  @BuiltValueField(wireName: 'TOTALVOLUME24HTO')
  String get totalVolume24HTo;
  @BuiltValueField(wireName: 'TOTALTOPTIERVOLUME24H')
  String get totalToTierVolume24H;
  @BuiltValueField(wireName: 'TOTALTOPTIERVOLUME24HTO')
  String get totalToTierVolume24HTo;
  @BuiltValueField(wireName: 'IMAGEURL')
  String get imageUrl;
  @BuiltValueField(wireName: 'CONVERSIONTYPE')
  String get conversionType;
  @BuiltValueField(wireName: 'CONVERSIONSYMBOL')
  String get conversionSymbol;

  Currency._();

  factory Currency([updates(CurrencyBuilder b)]) = _$Currency;
  static Serializer<Currency> get serializer => _$currencySerializer;
}

class DisplaySerializer implements StructuredSerializer<Display> {
  @override
  Display deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DisplayBuilder();

    final iterator = serialized.iterator;

    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;

      result.currency.replace(serializers.deserialize(value,
          specifiedType: const FullType(Currency)) as Currency);
    }

    return result.build();
  }

  @override
  Iterable serialize(Serializers serializers, Display object,
      {FullType specifiedType = FullType.unspecified}) {
    return null;
  }

  @override
  Iterable<Type> get types => [Display, _$Display];

  @override
  String get wireName => 'DISPLAY';
}
