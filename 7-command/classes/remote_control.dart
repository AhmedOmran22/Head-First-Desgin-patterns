import 'command.dart';
import 'no_command.dart';

// Invoker: holds commands in numbered slots and fires execute()/undo() on
// them without knowing what a slot's command actually does.
class RemoteControl {
  RemoteControl(int slotCount)
      : _onCommands = List.filled(slotCount, NoCommand()),
        _offCommands = List.filled(slotCount, NoCommand());

  final List<Command> _onCommands;
  final List<Command> _offCommands;
  Command _lastCommand = NoCommand();

  void setCommand(int slot, Command onCommand, Command offCommand) {
    _onCommands[slot] = onCommand;
    _offCommands[slot] = offCommand;
  }

  void onButtonWasPushed(int slot) {
    _onCommands[slot].execute();
    _lastCommand = _onCommands[slot];
  }

  void offButtonWasPushed(int slot) {
    _offCommands[slot].execute();
    _lastCommand = _offCommands[slot];
  }

  void undoButtonWasPushed() => _lastCommand.undo();
}
