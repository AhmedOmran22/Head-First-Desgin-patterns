import 'gumball_machine.dart';
import 'gumball_state.dart';

// ConcreteState: a quarter is in the machine. Turning the crank is now
// legal and moves the machine on to SoldState; ejecting gives the quarter
// back and returns to NoQuarterState.
class HasQuarterState implements GumballState {
  HasQuarterState(this.machine);

  final GumballMachine machine;

  @override
  void insertQuarter() => print('You can\'t insert another quarter.');

  @override
  void ejectQuarter() {
    print('Quarter returned.');
    machine.state = machine.noQuarterState;
  }

  @override
  void turnCrank() {
    print('You turned the crank.');
    machine.state = machine.soldState;
  }

  @override
  void dispense() => print('No gumball dispensed.');
}
