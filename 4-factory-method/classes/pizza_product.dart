// The Product: what the factory method creates.
abstract class PizzaProduct {
  String name = "Unknown Pizza";
  List<String> toppings = [];

  void prepare() {
    print("Preparing $name");
    print("Tossing dough...");
    print("Adding toppings: ${toppings.join(', ')}");
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
  String toString() => name;
}
