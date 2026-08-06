import 'cheese_pizza_client.dart';
import 'ny_pizza_ingredient_factory.dart';
import 'pizza_client.dart';
import 'pizza_store.dart';

class NYPizzaStore extends PizzaStore {
  NYPizzaStore() : super(NYPizzaIngredientFactory());

  @override
  PizzaClient createPizza(String type) {
    switch (type) {
      case "cheese":
        return CheesePizzaClient();
      default:
        throw ArgumentError("NYPizzaStore doesn't know how to make: $type");
    }
  }
}
