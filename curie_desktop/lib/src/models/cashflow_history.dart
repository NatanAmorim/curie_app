import 'package:curie_desktop/src/models/users.dart';

class CashflowHistory {
  final int cashflowHistoryPK;
  final int cashflowHistoryActivity;
  final int cashflowHistoryBalanceBefore;
  final int cashflowHistoryBalanceAfter;
  final Users cashflowHistoryCreatedBy;
  final DateTime cashflowHistoryCreatedAt;
  final Users cashflowHistoryLastModifiedBy;
  final DateTime cashflowHistoryLastModifiedAt;

  CashflowHistory(
      this.cashflowHistoryPK,
      this.cashflowHistoryActivity,
      this.cashflowHistoryBalanceBefore,
      this.cashflowHistoryBalanceAfter,
      this.cashflowHistoryCreatedBy,
      this.cashflowHistoryCreatedAt,
      this.cashflowHistoryLastModifiedBy,
      this.cashflowHistoryLastModifiedAt);
}
