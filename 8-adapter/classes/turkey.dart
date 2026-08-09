// The Adaptee: an existing class with an incompatible interface.
abstract class Turkey {
  void gobble();
  void fly();
}

class WildTurkey implements Turkey {
  @override
  void gobble() => print('Gobble gobble!');

  @override
  void fly() => print('I\'m flying a short distance');
}
