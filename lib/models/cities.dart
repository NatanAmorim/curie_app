import 'package:curie/models/states.dart';
import 'package:curie/models/users.dart';

class Cities {
  final int cityPK;
  final String cityName;
  final States cityState;
  final Users cityCreatedBy;
  final DateTime cityCreatedAt;
  final Users cityLastModifiedBy;
  final DateTime cityLastModifiedAt;

  Cities(this.cityPK, this.cityName, this.cityState, this.cityCreatedBy,
      this.cityCreatedAt, this.cityLastModifiedBy, this.cityLastModifiedAt);
}
