import 'classes/chicago_pizza_store.dart';
import 'classes/ny_pizza_store.dart';
import 'classes/pizza_store.dart';

void main() {
  PizzaStore nyStore = NYPizzaStore();
  PizzaStore chicagoStore = ChicagoPizzaStore();

  nyStore.orderPizza("cheese");
  print("");
  chicagoStore.orderPizza("cheese");
}
