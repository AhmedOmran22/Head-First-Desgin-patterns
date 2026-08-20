import 'classes/pizza_builder.dart';
import 'classes/stone_baked_pizza_builder.dart';
import 'classes/waiter.dart';

void main() {
  print('-- Director drives a standard build sequence (Margherita) --');
  final margheritaBuilder = StoneBakedPizzaBuilder();
  final waiter = Waiter(margheritaBuilder);
  final margherita = waiter.makeMargherita();
  print('Order ready: $margherita');

  print('');
  print('-- Same director, fresh builder, a different standard pizza --');
  final pepperoniBuilder = StoneBakedPizzaBuilder();
  final pepperoniWaiter = Waiter(pepperoniBuilder);
  final pepperoni = pepperoniWaiter.makePepperoni();
  print('Order ready: $pepperoni');

  print('');
  print('-- Client builds directly, no director, a fully custom order --');
  final PizzaBuilder customBuilder = StoneBakedPizzaBuilder();
  final custom = customBuilder
      .setSize('personal')
      .setCrust('gluten-free')
      .setSauce('pesto')
      .addTopping('goat cheese')
      .addTopping('sun-dried tomato')
      .addTopping('arugula')
      .build();
  print('Order ready: $custom');
}
