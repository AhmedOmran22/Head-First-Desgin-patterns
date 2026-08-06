import 'pizza_product.dart';

// A ConcreteProduct.
class ChicagoVeggiePizzaProduct extends PizzaProduct {
  ChicagoVeggiePizzaProduct() {
    name = "Chicago Style Veggie Pizza";
    toppings = ["Plum Tomato Sauce", "Mozzarella Cheese", "Spinach", "Eggplant"];
  }

  @override
  void cut() {
    print("Cutting the pizza into square slices");
  }
}
