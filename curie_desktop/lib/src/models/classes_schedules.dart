import 'package:curie_desktop/src/models/classes.dart';
import 'package:curie_desktop/src/models/rooms.dart';
import 'package:curie_desktop/src/models/users.dart';

class ClassesSchedules {
  final int classSchedulePK;
  final String classScheduleDayOfWeek;
  final DateTime classScheduleStartTime;
  final DateTime classScheduleEndTime;
  final Classes classScheduleClass;
  final Rooms classScheduleRoom;
  final Users classScheduleCreatedBy;
  final DateTime classScheduleCreatedAt;
  final Users classScheduleLastModifiedBy;
  final DateTime classScheduleLastModifiedAt;

  ClassesSchedules(
      this.classSchedulePK,
      this.classScheduleDayOfWeek,
      this.classScheduleStartTime,
      this.classScheduleEndTime,
      this.classScheduleClass,
      this.classScheduleRoom,
      this.classScheduleCreatedBy,
      this.classScheduleCreatedAt,
      this.classScheduleLastModifiedBy,
      this.classScheduleLastModifiedAt);
}
