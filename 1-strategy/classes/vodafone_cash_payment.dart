import 'payment_strategy.dart';

class VodafoneCashPayment implements PaymentStrategy {
  void pay(double amount) {
    print("Paying $amount with Vodafone Cash");
  }
}