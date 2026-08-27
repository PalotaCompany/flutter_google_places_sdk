import 'package:flutter_google_places_sdk_platform_interface/flutter_google_places_sdk_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('It should preserve current Places API New types', () {
    // given
    final json = <String, Object?>{
      'types': ['academic_department', 'yakitori_restaurant'],
    };

    // when
    final place = Place.fromJson(json);

    // then
    expect(place.types, [
      PlaceType.ACADEMIC_DEPARTMENT,
      PlaceType.YAKITORI_RESTAURANT,
    ]);
    expect(place.toJson()['types'], [
      'ACADEMIC_DEPARTMENT',
      'YAKITORI_RESTAURANT',
    ]);
  });

  test('It should deserialize a place containing an unknown type', () {
    // given
    const placeId = 'ChIJubnwoPBOqEcRCmSGhHgqMl8';
    final json = <String, Object?>{
      'id': placeId,
      'types': ['ESTABLISHMENT', 'TYPE_ADDED_AFTER_THIS_SDK_VERSION'],
    };

    // when
    final place = Place.fromJson(json);

    // then
    expect(place.id, placeId);
    expect(place.types, [PlaceType.ESTABLISHMENT, PlaceType.OTHER]);
  });
}
