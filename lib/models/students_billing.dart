import 'package:curie/models/users.dart';

class StudentsBilling {
  final int studentBillingPK;
  final int studentBillingPrice;
  final int studentBillingDiscount;
  final DateTime studentBillingDate;
  final Users studentBillingCreatedBy;
  final DateTime studentBillingCreatedAt;
  final Users studentBillingLastModifiedBy;
  final DateTime studentBillingLastModifiedAt;

  StudentsBilling(
      this.studentBillingPK,
      this.studentBillingPrice,
      this.studentBillingDiscount,
      this.studentBillingDate,
      this.studentBillingCreatedBy,
      this.studentBillingCreatedAt,
      this.studentBillingLastModifiedBy,
      this.studentBillingLastModifiedAt);
}
