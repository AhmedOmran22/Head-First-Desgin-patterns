import 'pizza_product.dart';

// A ConcreteProduct.
class NYVeggiePizzaProduct extends PizzaProduct {
  NYVeggiePizzaProduct() {
    name = "NY Style Veggie Pizza";
    toppings = ["Marinara Sauce", "Mushrooms", "Onions", "Peppers"];
  }
}
