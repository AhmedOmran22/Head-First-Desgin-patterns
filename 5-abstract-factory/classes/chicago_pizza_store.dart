import 'chicago_pizza_ingredient_factory.dart';
import 'cheese_pizza_client.dart';
import 'pizza_client.dart';
import 'pizza_store.dart';

class ChicagoPizzaStore extends PizzaStore {
  ChicagoPizzaStore() : super(ChicagoPizzaIngredientFactory());

  @override
  PizzaClient createPizza(String type) {
    switch (type) {
      case "cheese":
        return CheesePizzaClient();
      default:
        throw ArgumentError(
          "ChicagoPizzaStore doesn't know how to make: $type",
        );
    }
  }
}
