import 'caffeine_beverage.dart';

// ConcreteClass: supplies tea-specific steps, uses the default hook.
class Tea extends CaffeineBeverage {
  @override
  void brew() => print('Steeping the tea.');

  @override
  void addCondiments() => print('Adding lemon.');
}
