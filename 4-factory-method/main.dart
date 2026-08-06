import 'classes/chicago_pizza_creator.dart';
import 'classes/ny_pizza_creator.dart';
import 'classes/pizza_creator.dart';

void main() {
  PizzaCreator nyStore = NYPizzaCreator();
  PizzaCreator chicagoStore = ChicagoPizzaCreator();

  nyStore.orderPizza("cheese");
  print("");
  chicagoStore.orderPizza("cheese");
  print("");
  chicagoStore.orderPizza("veggie");
}
