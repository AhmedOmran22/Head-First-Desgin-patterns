import 'classes/gumball_machine.dart';

void main() {
  print('-- New machine loaded with 2 gumballs --');
  final machine = GumballMachine(2);
  print(machine);

  print('');
  print('-- Buying the first gumball --');
  machine.insertQuarter();
  machine.turnCrank();
  print(machine);

  print('');
  print('-- Trying to turn the crank with no quarter inserted --');
  machine.turnCrank();

  print('');
  print('-- Inserting a quarter, then changing your mind --');
  machine.insertQuarter();
  machine.ejectQuarter();
  print(machine);

  print('');
  print('-- Buying the last gumball --');
  machine.insertQuarter();
  machine.turnCrank();
  print(machine);

  print('');
  print('-- Machine is now sold out --');
  machine.insertQuarter();
  machine.turnCrank();
  print(machine);
}
