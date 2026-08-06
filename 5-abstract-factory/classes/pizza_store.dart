import 'pizza_client.dart';
import 'pizza_ingredient_factory.dart';

abstract class PizzaStore {
  final PizzaIngredientFactory ingredientFactory;

  PizzaStore(this.ingredientFactory);

  PizzaClient createPizza(String type);

  PizzaClient orderPizza(String type) {
    final pizza = createPizza(type);

    print("--- Making a ${pizza.name} ---");
    pizza.prepare(ingredientFactory);
    pizza.bake();
    pizza.cut();
    pizza.box();

    print(pizza);
    return pizza;
  }
}
