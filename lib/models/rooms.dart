import 'package:curie/models/classes.dart';
import 'package:curie/models/users.dart';

class Rooms {
  final int roomPK;
  final String roomName;
  final int roomMaximumOccupancy;
  final Classes classes;
  final Users roomCreatedBy;
  final DateTime roomCreatedAt;
  final Users roomLastModifiedBy;
  final DateTime roomLastModifiedAt;

  Rooms(
      this.roomPK,
      this.roomName,
      this.roomMaximumOccupancy,
      this.classes,
      this.roomCreatedBy,
      this.roomCreatedAt,
      this.roomLastModifiedBy,
      this.roomLastModifiedAt);
}
