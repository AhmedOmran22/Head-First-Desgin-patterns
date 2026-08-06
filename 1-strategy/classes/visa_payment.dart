import 'payment_strategy.dart';

class VisaPayment implements PaymentStrategy {
  void pay(double amount) {
    print("Paying $amount with Visa");
  }
}