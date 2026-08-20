import 'pizza.dart';
import 'pizza_builder.dart';

// ConcreteBuilder: accumulates the pizza's parts step by step and knows how
// to turn them into a finished Product when build() is called.
class StoneBakedPizzaBuilder implements PizzaBuilder {
  String _size = 'medium';
  String _crust = 'thin';
  String _sauce = 'tomato';
  final List<String> _toppings = [];

  @override
  PizzaBuilder setSize(String size) {
    _size = size;
    return this;
  }

  @override
  PizzaBuilder setCrust(String crust) {
    _crust = crust;
    return this;
  }

  @override
  PizzaBuilder setSauce(String sauce) {
    _sauce = sauce;
    return this;
  }

  @override
  PizzaBuilder addTopping(String topping) {
    _toppings.add(topping);
    return this;
  }

  @override
  Pizza build() {
    print(
      'StoneBakedPizzaBuilder: sliding a $_size $_crust-crust pizza into '
      'the stone oven.',
    );
    return Pizza(
      size: _size,
      crust: _crust,
      sauce: _sauce,
      toppings: List.unmodifiable(_toppings),
    );
  }
}
