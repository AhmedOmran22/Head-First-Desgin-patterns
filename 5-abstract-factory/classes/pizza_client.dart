import 'cheese.dart';
import 'dough.dart';
import 'pizza_ingredient_factory.dart';
import 'sauce.dart';

// The Client: depends only on the AbstractFactory interface, never on a
// specific region's ingredients.
abstract class PizzaClient {
  String name = "Unknown Pizza";

  late Dough dough;
  late Sauce sauce;
  late Cheese cheese;

  // Each pizza knows how to prepare itself, but asks a factory for
  // the actual ingredients — it never hardcodes a region's dough/sauce/cheese.
  void prepare(PizzaIngredientFactory ingredientFactory) {
    print("Preparing $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
  }

  void bake() {
    print("Bake for 25 minutes at 350");
  }

  void cut() {
    print("Cutting the pizza into diagonal slices");
  }

  void box() {
    print("Place pizza in official PizzaStore box");
  }

  @override
  String toString() {
    return "$name with ${dough.name}, ${sauce.name}, and ${cheese.name}";
  }
}
