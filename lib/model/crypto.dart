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
