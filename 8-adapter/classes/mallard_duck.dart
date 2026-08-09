import 'duck.dart';

class MallardDuck implements Duck {
  @override
  void quack() => print('Quack!');

  @override
  void fly() => print('I\'m flying (short bursts)');
}
