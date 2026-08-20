import 'gumball_machine.dart';
import 'gumball_state.dart';

// ConcreteState: no quarter has been inserted yet. Only inserting a quarter
// does anything useful here — everything else is refused, and the refusal
// lives entirely inside this one class.
class NoQuarterState implements GumballState {
  NoQuarterState(this.machine);

  final GumballMachine machine;

  @override
  void insertQuarter() {
    print('You inserted a quarter.');
    machine.state = machine.hasQuarterState;
  }

  @override
  void ejectQuarter() => print('You haven\'t inserted a quarter.');

  @override
  void turnCrank() => print('You turned, but there\'s no quarter.');

  @override
  void dispense() => print('You need to pay first.');
}
