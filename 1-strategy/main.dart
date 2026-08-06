import 'classes/cash_payment.dart';
import 'classes/visa_payment.dart';
import 'classes/wallet_payment.dart';
import 'classes/vodafone_cash_payment.dart';
import 'services/payment_service.dart';

void main() {
  PaymentService paymentService = PaymentService(VisaPayment());
  paymentService.pay(100.0);

  paymentService = PaymentService(CashPayment());
  paymentService.pay(50.0);

  paymentService = PaymentService(WalletPayment());
  paymentService.pay(75.0);

  paymentService = PaymentService(VodafoneCashPayment());
  paymentService.pay(200.0);
}
