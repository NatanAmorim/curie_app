import 'package:curie/models/cities.dart';
import 'package:curie/models/users.dart';

class Addresses {
  final int addressPK;
  final String addressZipCode;
  final String addressStreet;
  final String addressStreetType;
  final String addressDescription;
  final int addressNumber;
  final String addressType;
  final String addressObservation;
  final Cities addressCity;
  final Users addressCreatedBy;
  final DateTime addressCreatedAt;
  final Users addressLastModifiedBy;
  final DateTime addressLastModifiedAt;

  Addresses(
      this.addressPK,
      this.addressZipCode,
      this.addressStreet,
      this.addressStreetType,
      this.addressDescription,
      this.addressNumber,
      this.addressType,
      this.addressObservation,
      this.addressCity,
      this.addressCreatedBy,
      this.addressCreatedAt,
      this.addressLastModifiedBy,
      this.addressLastModifiedAt);
}
