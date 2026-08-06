import 'beverage.dart';

class Decaffe extends Beverage {
  Decaffe() {
    description = "Decaffe";
  }

  @override
  double cost() {
    return 1.05;
  }
}
