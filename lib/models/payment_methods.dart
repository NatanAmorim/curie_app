import 'package:curie/models/users.dart';

class PaymentMethods {
  final int paymentMethodPK;
  final String paymentMethodName;
  final String paymentMethodType;
  final bool paymentMethodAutoPay;
  final Users paymentMethodCreatedBy;
  final DateTime paymentMethodCreatedAt;
  final Users paymentMethodLastModifiedBy;
  final DateTime paymentMethodLastModifiedAt;

  PaymentMethods(
      this.paymentMethodPK,
      this.paymentMethodName,
      this.paymentMethodType,
      this.paymentMethodAutoPay,
      this.paymentMethodCreatedBy,
      this.paymentMethodCreatedAt,
      this.paymentMethodLastModifiedBy,
      this.paymentMethodLastModifiedAt);
}
