import 'gumball_machine.dart';
import 'gumball_state.dart';

// ConcreteState: no gumballs left. Every action is refused — the machine
// simply has nothing left to give — until someone restocks it.
class SoldOutState implements GumballState {
  SoldOutState(this.machine);

  final GumballMachine machine;

  @override
  void insertQuarter() => print('You can\'t insert a quarter, the machine is sold out.');

  @override
  void ejectQuarter() => print('You can\'t eject, you haven\'t inserted a quarter yet.');

  @override
  void turnCrank() => print('You turned, but there are no gumballs.');

  @override
  void dispense() => print('No gumball dispensed.');
}
