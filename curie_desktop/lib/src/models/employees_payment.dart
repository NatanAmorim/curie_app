import 'package:curie_desktop/src/models/employees.dart';
import 'package:curie_desktop/src/models/users.dart';

class EmployeesPayment {
  final int employeePaymentPK;
  final int employeePaymentValue;
  final bool employeePaymentPartial;
  final bool employeePaymentLate;
  final DateTime employeePaymentDateTime;
  final Employees employee;
  final Users employeePaymentCreatedBy;
  final DateTime employeePaymentCreatedAt;
  final Users employeePaymentLastModifiedBy;
  final DateTime employeePaymentLastModifiedAt;

  EmployeesPayment(
      this.employeePaymentPK,
      this.employeePaymentValue,
      this.employeePaymentPartial,
      this.employeePaymentLate,
      this.employeePaymentDateTime,
      this.employee,
      this.employeePaymentCreatedBy,
      this.employeePaymentCreatedAt,
      this.employeePaymentLastModifiedBy,
      this.employeePaymentLastModifiedAt);
}
