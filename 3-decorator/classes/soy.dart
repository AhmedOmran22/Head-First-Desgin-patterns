import 'add_on_decrator.dart';

class Soy extends AddOnDecorator {
  Soy(super.beverage);
  @override
  String description = "Soy";

  @override
  double cost() {
    return beverage.cost() + 0.15;
  }
}
