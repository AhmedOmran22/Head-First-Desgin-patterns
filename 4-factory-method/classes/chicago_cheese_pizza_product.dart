import 'pizza_product.dart';

// A ConcreteProduct.
class ChicagoCheesePizzaProduct extends PizzaProduct {
  ChicagoCheesePizzaProduct() {
    name = "Chicago Style Deep Dish Cheese Pizza";
    toppings = ["Plum Tomato Sauce", "Mozzarella Cheese"];
  }

  @override
  void cut() {
    print("Cutting the pizza into square slices");
  }
}
