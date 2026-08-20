import 'classes/coffee.dart';
import 'classes/tea.dart';

void main() {
  print('-- Making tea (fixed algorithm, tea-specific steps) --');
  final tea = Tea();
  tea.prepareRecipe();

  print('');
  print('-- Making coffee with condiments (same algorithm, new steps) --');
  final coffee = Coffee();
  coffee.prepareRecipe();

  print('');
  print('-- Making coffee without condiments (hook skips a step) --');
  final blackCoffee = Coffee(wantsCondiments: false);
  blackCoffee.prepareRecipe();
}
