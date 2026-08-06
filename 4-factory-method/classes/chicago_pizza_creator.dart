import 'chicago_cheese_pizza_product.dart';
import 'chicago_veggie_pizza_product.dart';
import 'pizza_creator.dart';
import 'pizza_product.dart';

// A ConcreteCreator.
class ChicagoPizzaCreator extends PizzaCreator {
  @override
  PizzaProduct createPizzaProduct(String type) {
    switch (type) {
      case "cheese":
        return ChicagoCheesePizzaProduct();
      case "veggie":
        return ChicagoVeggiePizzaProduct();
      default:
        throw ArgumentError(
          "ChicagoPizzaCreator doesn't know how to make: $type",
        );
    }
  }
}
