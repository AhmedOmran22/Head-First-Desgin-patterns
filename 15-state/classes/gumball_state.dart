// State: the interface every concrete gumball-machine state implements.
// Each method corresponds to an action the machine's user (or crank) can
// trigger, and each ConcreteState decides what that action actually does
// while the machine is in that state.
abstract class GumballState {
  void insertQuarter();
  void ejectQuarter();
  void turnCrank();
  void dispense();
}
