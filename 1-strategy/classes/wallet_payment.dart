import 'payment_strategy.dart';

class WalletPayment implements PaymentStrategy {
  void pay(double amount) {
    print("Paying $amount with Wallet");
  }
}