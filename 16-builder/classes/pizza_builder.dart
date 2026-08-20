import 'pizza.dart';

// Builder: the step-by-step interface for assembling a Pizza. Every step
// returns the builder itself so calls can be chained fluently.
abstract class PizzaBuilder {
  PizzaBuilder setSize(String size);
  PizzaBuilder setCrust(String crust);
  PizzaBuilder setSauce(String sauce);
  PizzaBuilder addTopping(String topping);
  Pizza build();
}
