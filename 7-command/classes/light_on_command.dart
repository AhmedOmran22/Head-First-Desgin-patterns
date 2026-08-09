import 'command.dart';
import 'light.dart';

class LightOnCommand implements Command {
  LightOnCommand(this._light);
  final Light _light;

  @override
  void execute() => _light.on();

  @override
  void undo() => _light.off();
}
