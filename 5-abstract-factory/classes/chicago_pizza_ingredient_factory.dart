import 'cheese.dart';
import 'dough.dart';
import 'pizza_ingredient_factory.dart';
import 'sauce.dart';

// A ConcreteFactory.
class ChicagoPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Dough createDough() => ThickCrustDough();

  @override
  Sauce createSauce() => PlumTomatoSauce();

  @override
  Cheese createCheese() => MozzarellaCheese();
}
