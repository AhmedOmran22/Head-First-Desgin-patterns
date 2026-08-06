import '../classes/payment_strategy.dart';

class PaymentService {
  final PaymentStrategy paymentStrategy;
  PaymentService(this.paymentStrategy);
  void pay(double amount) {
    paymentStrategy.pay(amount);
  }
}
