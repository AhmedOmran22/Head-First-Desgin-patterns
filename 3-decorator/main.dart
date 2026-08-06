import 'classes/beverage.dart';
import 'classes/crammel.dart';
import 'classes/espresso.dart';
import 'classes/soy.dart';

void main() {
  Beverage beverage = Espresso();
  print("${beverage.getDescription()} \$${beverage.cost()}");
  Cramel cramel = Cramel(beverage);
  print("${cramel.getDescription()} \$${cramel.cost()}");
  Soy soy = Soy(cramel);
  print("${soy.getDescription()} \$${soy.cost()}");

  Beverage beverage2 = Cramel(Cramel(Soy(Espresso())));
  print("${beverage2.getDescription()} \$${beverage2.cost()}");

}
