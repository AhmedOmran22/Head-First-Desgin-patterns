import 'caffeine_beverage.dart';

// ConcreteClass: supplies coffee-specific steps, overrides the hook so a
// customer can opt out of condiments entirely.
class Coffee extends CaffeineBeverage {
  Coffee({this.wantsCondiments = true});

  final bool wantsCondiments;

  @override
  void brew() => print('Dripping coffee through filter.');

  @override
  void addCondiments() => print('Adding sugar and milk.');

  @override
  bool customerWantsCondiments() => wantsCondiments;
}
