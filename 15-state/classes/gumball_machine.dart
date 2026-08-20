import 'gumball_state.dart';
import 'has_quarter_state.dart';
import 'no_quarter_state.dart';
import 'sold_out_state.dart';
import 'sold_state.dart';

// Context: holds the current state and delegates every action to it. The
// machine itself no longer knows how to behave in each state — it just
// forwards the call and lets whichever GumballState is currently installed
// decide what happens, including what the next state should be.
class GumballMachine {
  GumballMachine(this.count) {
    noQuarterState = NoQuarterState(this);
    hasQuarterState = HasQuarterState(this);
    soldState = SoldState(this);
    soldOutState = SoldOutState(this);
    state = count > 0 ? noQuarterState : soldOutState;
  }

  late final NoQuarterState noQuarterState;
  late final HasQuarterState hasQuarterState;
  late final SoldState soldState;
  late final SoldOutState soldOutState;

  late GumballState state;
  int count;

  void insertQuarter() => state.insertQuarter();

  void ejectQuarter() => state.ejectQuarter();

  void turnCrank() {
    state.turnCrank();
    state.dispense();
  }

  void releaseBall() {
    if (count > 0) {
      count--;
      print('A gumball comes rolling out the slot.');
    }
  }

  @override
  String toString() => 'GumballMachine(count: $count, state: ${state.runtimeType})';
}
