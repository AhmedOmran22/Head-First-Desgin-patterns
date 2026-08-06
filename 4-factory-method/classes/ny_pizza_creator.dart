import 'ny_cheese_pizza_product.dart';
import 'ny_veggie_pizza_product.dart';
import 'pizza_creator.dart';
import 'pizza_product.dart';

// A ConcreteCreator.
class NYPizzaCreator extends PizzaCreator {
  @override
  PizzaProduct createPizzaProduct(String type) {
    switch (type) {
      case "cheese":
        return NYCheesePizzaProduct();
      case "veggie":
        return NYVeggiePizzaProduct();
      default:
        throw ArgumentError("NYPizzaCreator doesn't know how to make: $type");
    }
  }
}
