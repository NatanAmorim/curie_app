class StudentsPaymentsOverdue {
  final int studentPaymentOverduePK;
  final int studentPaymentOverdueFine;
  final bool studentPaymentOverduePaid;
  final DateTime studentPaymentOverduePaidDateTime;

  StudentsPaymentsOverdue(
      this.studentPaymentOverduePK,
      this.studentPaymentOverdueFine,
      this.studentPaymentOverduePaid,
      this.studentPaymentOverduePaidDateTime);
}
