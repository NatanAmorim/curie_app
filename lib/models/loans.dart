import 'package:curie/models/students.dart';
import 'package:curie/models/users.dart';

class Loans {
  final int loanPK;
  final String loanType;
  final String loanDescription;
  final int loanAmount;
  final int loanBalance;
  final DateTime loanPaymentDate;
  final int loanInterestRate;
  final Students student;
  final Users loanCreatedBy;
  final DateTime loanCreatedAt;
  final Users loanLastModifiedBy;
  final DateTime loanLastModifiedAt;

  Loans(
      this.loanPK,
      this.loanType,
      this.loanDescription,
      this.loanAmount,
      this.loanBalance,
      this.loanPaymentDate,
      this.loanInterestRate,
      this.student,
      this.loanCreatedBy,
      this.loanCreatedAt,
      this.loanLastModifiedBy,
      this.loanLastModifiedAt);
}
