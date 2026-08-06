import 'payment_strategy.dart';

class CashPayment implements PaymentStrategy {
  void pay(double amount) {
    print("Paying $amount with Cash");
  }
}
