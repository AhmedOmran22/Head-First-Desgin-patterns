import 'cheese.dart';
import 'dough.dart';
import 'sauce.dart';

// The AbstractFactory: produces a whole family of related ingredients
// (dough, sauce, cheese) that are guaranteed to belong together.
abstract class PizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
  Cheese createCheese();
}
