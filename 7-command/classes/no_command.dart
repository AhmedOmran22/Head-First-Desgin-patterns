import 'command.dart';

// Null Object: fills unused invoker slots so RemoteControl never has to
// null-check before calling execute()/undo().
class NoCommand implements Command {
  @override
  void execute() {}

  @override
  void undo() {}
}
