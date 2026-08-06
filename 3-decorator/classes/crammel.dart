import 'add_on_decrator.dart';
import 'beverage.dart';

class Cramel extends AddOnDecorator {
  Cramel(Beverage beverage) : super(beverage);

  @override
  String description = "Cramel";

  @override
  double cost() {
    return beverage.cost() + 0.10;
  }
}
