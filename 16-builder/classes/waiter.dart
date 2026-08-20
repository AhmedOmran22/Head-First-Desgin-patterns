import 'pizza.dart';
import 'pizza_builder.dart';

// Director: knows the standard build sequences for the house menu, but not
// how any individual step is actually carried out — that's left entirely
// to whichever PizzaBuilder it's handed.
class Waiter {
  Waiter(this.builder);

  final PizzaBuilder builder;

  Pizza makeMargherita() {
    return builder
        .setSize('medium')
        .setCrust('thin')
        .setSauce('tomato')
        .addTopping('mozzarella')
        .addTopping('basil')
        .build();
  }

  Pizza makePepperoni() {
    return builder
        .setSize('large')
        .setCrust('hand-tossed')
        .setSauce('tomato')
        .addTopping('mozzarella')
        .addTopping('pepperoni')
        .build();
  }
}
