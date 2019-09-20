import 'package:chopper/chopper.dart';

import 'model/serializers.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    final Response dynamicResponse = super.convertResponse(response);

    final BodyType customBody = serializers.deserializeWith(
        serializers.serializerForType(InnerType), dynamicResponse.body);

    return dynamicResponse.replace<BodyType>(body: customBody);
  }
}
