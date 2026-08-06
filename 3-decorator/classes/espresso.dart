import 'beverage.dart';

class Espresso extends Beverage {
  Espresso() {
    description = "Espresso";
  }

  @override
  double cost() {
    return 1.99;
  }
}
