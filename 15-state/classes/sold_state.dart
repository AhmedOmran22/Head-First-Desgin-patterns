import 'gumball_machine.dart';
import 'gumball_state.dart';

// ConcreteState: the crank has been turned and a gumball is about to come
// out. This state decides where the machine lands next — SoldOutState if
// that was the last one, NoQuarterState otherwise — entirely on its own.
class SoldState implements GumballState {
  SoldState(this.machine);

  final GumballMachine machine;

  @override
  void insertQuarter() => print('Please wait, a gumball is being dispensed.');

  @override
  void ejectQuarter() => print('Sorry, you already turned the crank.');

  @override
  void turnCrank() => print('Turning twice doesn\'t get you another gumball.');

  @override
  void dispense() {
    machine.releaseBall();
    if (machine.count > 0) {
      machine.state = machine.noQuarterState;
    } else {
      print('Oops, out of gumballs!');
      machine.state = machine.soldOutState;
    }
  }
}
