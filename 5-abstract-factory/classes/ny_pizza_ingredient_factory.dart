import 'cheese.dart';
import 'dough.dart';
import 'pizza_ingredient_factory.dart';
import 'sauce.dart';

// A ConcreteFactory.
class NYPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Dough createDough() => ThinCrustDough();

  @override
  Sauce createSauce() => MarinaraSauce();

  @override
  Cheese createCheese() => ReggianoCheese();
}
