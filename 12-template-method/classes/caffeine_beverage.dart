// AbstractClass: defines the skeleton of the recipe as a template method,
// deferring some steps to subclasses and offering one as an optional hook.
abstract class CaffeineBeverage {
  // The template method: fixed algorithm structure, not overridable.
  void prepareRecipe() {
    boilWater();
    brew();
    pourInCup();
    if (customerWantsCondiments()) {
      addCondiments();
    }
  }

  void boilWater() => print('Boiling water.');

  void pourInCup() => print('Pouring into cup.');

  // Primitive operations: every subclass must supply its own version.
  void brew();
  void addCondiments();

  // Hook: subclasses may override this, but don't have to.
  bool customerWantsCondiments() => true;
}
