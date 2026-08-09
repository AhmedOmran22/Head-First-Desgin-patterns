import 'classes/duck.dart';
import 'classes/mallard_duck.dart';
import 'classes/turkey.dart';
import 'classes/turkey_adapter.dart';

void testDuck(Duck duck) {
  duck.quack();
  duck.fly();
}

void main() {
  final duck = MallardDuck();

  final Turkey turkey = WildTurkey();
  final Duck turkeyAdapter = TurkeyAdapter(turkey);

  print('The Duck says...');
  testDuck(duck);

  print('\nThe Turkey says...');
  turkey.gobble();
  turkey.fly();

  print('\nThe TurkeyAdapter says...');
  testDuck(turkeyAdapter); // same testDuck() call, adapted turkey underneath
}
