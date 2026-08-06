import 'pizza_product.dart';

// The Creator: declares the factory method and a template method that
// uses it. Subclasses decide *which* ConcreteProduct gets built.
abstract class PizzaCreator {
  // The factory method.
  PizzaProduct createPizzaProduct(String type);

  // Template method: the recipe never changes, only createPizzaProduct does.
  PizzaProduct orderPizza(String type) {
    final pizza = createPizzaProduct(type);

    print("--- Making a $pizza ---");
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();

    return pizza;
  }
}
